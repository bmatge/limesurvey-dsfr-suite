import { execFileSync } from 'node:child_process';

/**
 * Lit la dernière réponse complète (submitdate NON NULL) du questionnaire
 * directement depuis la base de données MySQL du conteneur Docker de dev.
 *
 * Utilisé par la suite de tests `--results` pour vérifier que ce qui a été
 * saisi côté front est bien restitué dans les résultats LimeSurvey.
 *
 * @param surveyId ID du questionnaire (par défaut 282267 = questionnaire RGAA de test)
 * @returns Un dictionnaire {nom_de_colonne → valeur}, où les colonnes correspondent
 *          aux SGQA des questions (ex: "282267X1X1").
 */
export function getLatestSubmittedResponse(surveyId = 282267): Record<string, string | null> {
  const table = `lime_survey_${surveyId}`;
  const sql = `SELECT * FROM \`${table}\` WHERE submitdate IS NOT NULL ORDER BY id DESC LIMIT 1\\G`;

  const out = execFileSync(
    'docker',
    [
      'exec',
      'limesurvey-dev-db',
      'mysql',
      '-u', 'limesurvey',
      '-plimesurvey',
      'limesurvey',
      '-e', sql,
    ],
    { encoding: 'utf8', stdio: ['ignore', 'pipe', 'ignore'] },
  );

  const row: Record<string, string | null> = {};
  const lines = out.split('\n');
  for (const line of lines) {
    const m = line.match(/^\s*([^:]+):\s?(.*)$/);
    if (!m) continue;
    const key = m[1].trim();
    const value = m[2];
    if (key.startsWith('*') || key === '') continue;
    row[key] = value === 'NULL' ? null : value;
  }

  return row;
}

/** Compte le nombre de réponses soumises (utile pour s'assurer qu'une nouvelle a été créée). */
export function countSubmittedResponses(surveyId = 282267): number {
  const table = `lime_survey_${surveyId}`;
  const out = execFileSync(
    'docker',
    [
      'exec',
      'limesurvey-dev-db',
      'mysql',
      '-u', 'limesurvey',
      '-plimesurvey',
      'limesurvey',
      '-sNe', `SELECT COUNT(*) FROM \`${table}\` WHERE submitdate IS NOT NULL;`,
    ],
    { encoding: 'utf8', stdio: ['ignore', 'pipe', 'ignore'] },
  );
  return parseInt(out.trim(), 10) || 0;
}
