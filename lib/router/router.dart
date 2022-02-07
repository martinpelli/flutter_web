import 'package:fluro/fluro.dart';
import 'package:flutter_web/ui/views/counter_provider_view.dart';
import 'package:flutter_web/ui/views/counter_view.dart';
import 'package:flutter_web/ui/views/view_404.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static void configureRoutes() {
    router.define('/',
        handler: _counterHandler, transitionType: TransitionType.fadeIn);
    router.define('/stateful',
        handler: _counterHandler, transitionType: TransitionType.fadeIn);
    router.define('/stateful/:base',
        handler: _counterHandler, transitionType: TransitionType.fadeIn);
    router.define('/provider',
        handler: _counterProviderHandler,
        transitionType: TransitionType.fadeIn);
    router.notFoundHandler = _pageNotFound;
  }

  static Handler _counterHandler = Handler(
      handlerFunc: (context, params) =>
          CounterView(base: params['base']?[0] ?? '0'));

  static Handler _counterProviderHandler =
      Handler(handlerFunc: (context, params) => CounterProviderView());

  static Handler _pageNotFound = Handler(handlerFunc: (_, __) => View404());
}
