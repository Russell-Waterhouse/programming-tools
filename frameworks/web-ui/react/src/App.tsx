import { useState } from 'react'
import { Button } from './Button'
import './App.css'

function App() {
  const [equation, setEquation] = useState("0");

  return (
    <>
      <h1>Calculator</h1>
      <div className="card">
        <h2>{equation}</h2>
        <button onClick={() => setEquation((equation) => equation + "0")}>
          click this to add a zero to the equation
        </button>


        <br/>
        <Button text="1" />
        <Button text="2" />
        <Button text="3" />
        <br/>
        <Button text="4" />
        <Button text="5" />
        <Button text="6" />
        <br/>
        <Button text="7" />
        <Button text="8" />
        <Button text="9" />
        <br/>
        <Button text="0" />
        <Button text="+" />
        <Button text="-" />
        <br/>
        <Button text="=" />
      </div>
    </>
  )
}

export default App
