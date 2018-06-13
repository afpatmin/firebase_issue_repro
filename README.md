# firebase_issue_repro

A minimal reproduction of firebase issue #177 (https://github.com/firebase/firebase-dart/issues/177)

## Usage

Update main.dart and change the firebase details to a valid host

```
  fb.initializeApp(
      apiKey: '[YOUR API KEY]',        
      databaseURL: '[YOUR DATABASE URL]',        
      projectId: '[YOUR PROJECT ID]');
```


Opening the web app will create a new collection in your firestore root called 'test', add a document with a 
single property 'key': oldValue. Immediately after it will update the field to 'newValue', which should generate 
a warning in the console: `Cannot find native JavaScript type (firebase.Thenable) for type check`