import { useState } from 'react'
import './App.css'
import { Button } from './Button'

function App() {
  const [equation, setEquation] = useState<string>("0");

  const addToEquation = (char: string) => {
    setEquation((equation) => equation + char);
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
        <Button text="=" clickFunction={addToEquation} />
      </div>
    </>
  )
}

export default App
