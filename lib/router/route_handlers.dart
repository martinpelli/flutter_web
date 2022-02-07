import 'package:fluro/fluro.dart';

import 'package:flutter_web/ui/views/counter_provider_view.dart';
import 'package:flutter_web/ui/views/counter_view.dart';
import 'package:flutter_web/ui/views/view_404.dart';

final counterHandler = Handler(
    handlerFunc: (context, params) =>
        CounterView(base: params['base']?.first ?? '0'));

final counterProviderHandler = Handler(
    handlerFunc: (context, params) =>
        CounterProviderView(base: params['q']?.first ?? '0'));

final dashboardUserHandler =
    Handler(handlerFunc: (context, params) => View404());

final pageNotFound = Handler(handlerFunc: (_, __) => View404());
