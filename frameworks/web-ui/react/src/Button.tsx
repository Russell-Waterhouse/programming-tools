export function Button({text, clickFunction}: {text: string, clickFunction: (input: string) => void;}) {
    return ( 
      <button onClick={() => clickFunction(text)}>
        {text}
      </button>
    )
}
