import 'package:messenger/data/models/message_model.dart';
import 'package:messenger/utils/result.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseApiService {
  final SupabaseClient _client;

  SupabaseApiService([SupabaseClient? client])
    : _client = client ?? Supabase.instance.client;

  Stream<Result<List<Message>>> get messages {
      return _client
        .from('Messages')
        .stream(primaryKey: ['id'])
        .order('received_at')
        .map((data) => Result.ok(data.map((json) => Message.fromJson(json)).toList()));
  }
}