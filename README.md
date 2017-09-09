# DelphiEasyThread
Simple thread implementation support both FireMonkey, VCL frameworks.

## How to use
You should contain AnonThread.pas to your project, then you can import it to your unit.
```pascal
uses AnonThread;
```
Define your thread.
```pascal
FThread: TAnonymousThread<String>;
```
This thread will return `String` value to OnComplete procedure.
You can change returning data type.
`TAnonymousThread.create` requires anonymous functions(closures) as it's parameters.
```pascal
FThread := TAnonymousThread<String>.Create(
```
Implement your "to do" works in this function.
```pascal
  function: String begin
    Button1.Enabled := false;
    Result := idhttp1.Get('http://google.com');
  end,
```
Implement what will you do when that works are finished in this procedure
```pascal
  procedure(AResult: String) begin
    Button1.Enabled := true;
    Memo1.Text := AResult;
  end,
```
And handling exceptions in the next procedure.
```pascal
  procedure(AException: Exception) begin
    showmessage(AException.ToString);
  end,
false);
```

## Example
This repository is a example implementation using AnonThread, making an Indy HTTP component to get http transaction.
