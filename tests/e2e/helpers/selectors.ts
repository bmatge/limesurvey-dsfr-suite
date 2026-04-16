/**
 * Dictionnaire centralisé des sélecteurs CSS utilisés par custom.js.
 * Un seul endroit à mettre à jour si le DOM change pendant le refactoring.
 */
export const S = {
  // --- Conteneurs questions ---
  questionContainer: '.question-container',
  questionContainerError: '.question-container.input-error',
  questionText: '[id^="ls-question-text-"]',
  questionValidContainer: '.question-valid-container',

  // --- DSFR form groups ---
  frInputGroup: '.fr-input-group',
  frInputGroupError: '.fr-input-group--error',
  frInputGroupValid: '.fr-input-group--valid',
  frMessagesGroup: '.fr-messages-group',
  frMessageError: '.fr-message--error',
  frMessageValid: '.fr-message--valid',
  frInputError: '.fr-input--error',
  frInputValid: '.fr-input--valid',

  // --- Error summary ---
  errorSummary: '#dsfr-error-summary',
  errorSummaryLink: '#dsfr-error-summary a[href^="#question"]',

  // --- Required fields ---
  requiredNotice: '#required-fields-notice',
  requiredAsterisk: '.required-asterisk',
  mandatoryQuestion: '.mandatory.question-container',
  mandatoryCounter: '[id^="mandatory-counter-"]',

  // --- Ranking ---
  rankingQuestion: '.ranking-question-dsfr[data-ranking-qid]',
  rankingChoiceList: '[id^="sortable-choice-"]',
  rankingRankList: '[id^="sortable-rank-"]',
  rankingBtnAdd: '.ranking-btn-add',
  rankingBtnUp: '.ranking-btn-up',
  rankingBtnDown: '.ranking-btn-down',
  rankingBtnRemove: '.ranking-btn-remove',
  rankingBadge: '.ranking-rank-badge',
  rankingLiveRegion: '[id^="ranking-live-"]',

  // --- Conditional questions ---
  conditionalQuestion: '[data-relevance]',
  conditionalLiveRegion: '#conditional-live-region',
  lsIrrelevant: '.ls-irrelevant',
  lsHidden: '.ls-hidden',

  // --- Input on demand ---
  inputOnDemandAdd: '.selector--inputondemand-addlinebutton',
  inputOnDemandList: '.selector--inputondemand-list',
  inputOnDemandItem: '.selector--inputondemand-list-item',

  // --- Numeric ---
  numericInput: 'input[data-number="1"]',

  // --- Radio / Checkbox ---
  radioList: '.radio-list',
  checkboxList: '.checkbox-list',
  listRadioContainer: '.list-radio.question-container',
  radioOther: 'input[type="radio"][value="-oth-"]',
  radioNoAnswer: 'input[type="radio"][value=""]',

  // --- Validation tips ---
  validationTip: '.ls-questionhelp[id^="vmsg_"]',

  // --- Tables ---
  arrayTable: '.ls-answers table',
  dropdownArray: 'table.dropdown-array',

  // --- Navigation ---
  submitBtn: '#ls-button-submit',
  nextBtn: '#ls-button-next',
  prevBtn: '#ls-button-previous',
} as const;
