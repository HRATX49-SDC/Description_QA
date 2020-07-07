import React from 'react';
import Question from './Question.js';
import AskQuestion from './AskQuestion.js';
import Answer from './Answer.js';

const QA = ({catID, questions, addQuestion, addAnswer}) => {

// Q&A tab- posting questions and answers specific to the current cat

  if (questions[0]['qID'] === null) {
    window.questions = 0;
    return (
      <div className="innerMargins">
        <div className="askQBox">
          <AskQuestion
            catID={catID}
            addQuestion={addQuestion}
          />
        </div>
      </div>
    )
  } else {
    return (
      <div className="innerMargins">
        {questions.map(question => {
          return (
            <Question
              key={question.qID}
              catID={catID}
              question={question}
              addAnswer={addAnswer}
            />
          )
        })}
        <div className="askQBox">
          <button className="largeWhiteButton">See all questions ({questions.length})</button>
          <AskQuestion
            catID={catID}
            addQuestion={addQuestion}
          />
        </div>
      </div>
    )
  }

}

export default QA;
