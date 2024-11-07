import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class SingleTickerProviderImpl implements TickerProvider {
  final BuildContext context;

  SingleTickerProviderImpl(this.context);

  @override
  Ticker createTicker(TickerCallback onTick) {
    return Ticker(onTick, debugLabel: 'Created by $context');
  }
}
