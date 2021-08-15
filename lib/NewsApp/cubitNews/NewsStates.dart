abstract class NewsStates {}

class NewsInitialize extends NewsStates{}

class NewsBottom extends NewsStates{}

class NewsLoading extends NewsStates{}

class NewsGetSuccess extends NewsStates{}

class NewsGetError extends NewsStates{

  final String errors;

  NewsGetError(this.errors);
}
