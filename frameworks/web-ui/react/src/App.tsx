import { useState } from 'react'
import './App.css'
import { Button } from './Button'


function App() {
  const [equation, setEquation] = useState<string>("0");

  const addToEquation = (token: string) => {
    setEquation((equation) => {
      if (equation == "0") {
        return token;
      }
      return equation + token
    });
  }

  const clear = () => {
    setEquation((equation) => "0");
  }

  const calculate = () => {
    setEquation((equation) => eval(equation));
  }

  return (
    <>
      <h1>Calculator</h1>
      <div className="card">
        <h2>{equation}</h2>

        <br/>
        <Button text="1" clickFunction={addToEquation} />
        <Button text="2" clickFunction={addToEquation}/>
        <Button text="3" clickFunction={addToEquation} />
        <br/>
        <Button text="4" clickFunction={addToEquation} />
        <Button text="5" clickFunction={addToEquation} />
        <Button text="6" clickFunction={addToEquation} />
        <br/>
        <Button text="7" clickFunction={addToEquation} />
        <Button text="8" clickFunction={addToEquation} />
        <Button text="9" clickFunction={addToEquation} />
        <br/>
        <Button text="0" clickFunction={addToEquation} />
        <Button text="+" clickFunction={addToEquation} />
        <Button text="-" clickFunction={addToEquation} />
        <br/>
        <button onClick={() => calculate()} >=</button>
        <button onClick={() => clear()} >CLEAR</button>

      </div>
    </>
  )
}

export default App
