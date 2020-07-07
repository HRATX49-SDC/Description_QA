import React from 'react';
import Details from './Details.js';
import Shipping from './Shipping.js';
import QA from './Q&A.js';

const CurrentTab = ({tabSelected, cat, questions, addQuestion, addAnswer}) => {
// Depending on the current "tabSelected" value,
// this will render each of the different tab pages
  if (tabSelected === 'Details') {
    return (
      <Details cat={cat} />
    )
  }
  if (tabSelected === 'Shipping') {
    return (
      <Shipping />
    )
  }
  if (tabSelected === 'QA') {
    return (
      <QA
        catID={cat.cID}
        questions={questions}
        addQuestion={addQuestion}
        addAnswer={addAnswer}
      />
    )
  }
}

export default CurrentTab;