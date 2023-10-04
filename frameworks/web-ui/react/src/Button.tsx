export function Button({text, clickFunction}: {text: string, clickFunction: any}) {
    return (
      <button onClick={clickFunction}>
        {text}
      </button>
    )
}
