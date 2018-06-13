import 'package:firebase/firebase.dart' as fb;

void main() async {
  fb.initializeApp(
        apiKey: '[YOUR API KEY]',        
        databaseURL: '[YOUR DATABASE URL]',        
        projectId: '[YOUR PROJECT ID]');

  final collection = fb.firestore().collection('test');

  final ref = await collection.add({'key':'old value'});
  await collection.doc(ref.id).update(data: <String, String>{'key':'new value'});
}