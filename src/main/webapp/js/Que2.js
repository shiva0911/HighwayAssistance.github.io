const quizData = [
    {
        question: "Maximum permitted speed of a motor car on national highway is:",
        a: "60 km/hr",
        b: "70 km/hr",
        c: "80 km/hr",
        d: "120 km/hr",
        correct: "b",
    },
    {
        question: "What is legal age to ride a motorcycle without a gear",
        a: "20 Years",
        b: "24 Years",
        c: "16 Years",
        d: "19 Years",
        correct: "c",
    },
    
    



    
    {
        question: "which side of road should a vehicle's driver drive on ?",
        a: "Right side",
        b: "Center side ",
        c: "Any side",
        d: "Left side",
        correct: "d",
    },
    {
        question: "Your insurance has expired .How long can you legally drive your vehicle before you renew it ?",
        a: "0 days",
        b: "1 week",
        c: "1 month",
        d: "1 year",
        correct: "a",
    },
    
    
     {
        question: "A PUCC(Pollution Under Control Certificate ) is valid for how long from the date of issue ?",
        a: "Eight months",
        b: "Four months",
        c: "Twenty months",
        d: "Twelve months",
        correct: "d",
    },
     {
        question: "If you're involved in a motor accident how long do you report it to the nearest police station ",
        a: "72 hours",
        b: "48 hours",
        c: " 24 hours",
        d: "12 hours",
        correct: "c",
    },{
        question: "Once you have obtained your learner licence ,it is valid for how long ?",
       a: "Eight months",
        b: "Four months",
        c: "Six months",
        d: "One year",
        correct: "c",
    },{
        question: "When driving on a ghat road ,the maximum speed permitted is ...?",
        a: "25 km/h",
        b: "55 km/h",
        c: "35 km/h",
        d: "45 km/h",
        correct: "c",
    },
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
];

const quiz = document.getElementById('quiz')
const answerEls = document.querySelectorAll('.answer')
const questionEl = document.getElementById('question')
const a_text = document.getElementById('a_text')
const b_text = document.getElementById('b_text')
const c_text = document.getElementById('c_text')
const d_text = document.getElementById('d_text')
const submitBtn = document.getElementById('submit')

let currentQuiz = 0
let score = 0

loadQuiz()

function loadQuiz() {
    deselectAnswers()

    const currentQuizData = quizData[currentQuiz]

    questionEl.innerText = currentQuizData.question
    a_text.innerText = currentQuizData.a
    b_text.innerText = currentQuizData.b
    c_text.innerText = currentQuizData.c
    d_text.innerText = currentQuizData.d
}

function deselectAnswers() {
    answerEls.forEach(answerEl => answerEl.checked = false)
}

function getSelected() {
    let answer

    answerEls.forEach(answerEl => {
        if(answerEl.checked) {
            answer = answerEl.id
        }
    })

    return answer
}

submitBtn.addEventListener('click', () => {
    const answer = getSelected()

    if(answer) {
        if(answer === quizData[currentQuiz].correct) {
            score++
        }

        currentQuiz++

        if(currentQuiz < quizData.length) {
            loadQuiz()
        } 
        
        else {
            quiz.innerHTML = `
                <h2>You answered ${score}/${quizData.length} questions correctly</h2>
                <h2>Congrats 
                <h2>your score is ${score}</h2>

                <button onclick="location.reload()">RE-Take Quiz</button>
            `
        }
        
    }
   
		
	
})