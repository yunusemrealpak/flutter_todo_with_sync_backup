import 'dart:io';

import 'package:flutter/material.dart';

extension TextExtensions on Text {
  Text get correctSize {
    return Text(
      data ?? '',
      style: style?.copyWith(
        fontSize: Platform.isIOS ? style!.fontSize ?? 24 : (style!.fontSize ?? 24) * 0.8,
      ),
    );
  }

  Text get white {
    return Text(
      data ?? '',
      style: style?.copyWith(
        color: Colors.white,
      ) ?? const TextStyle(color: Colors.white),
    );
  }

  Text get whiteAndBold {
    return Text(
      data ?? '',
      style: style?.copyWith(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ) ?? const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
    );
  }

  Text get white70 {
    return Text(
      data ?? '',
      style: style?.copyWith(
        color: Colors.white70,
      ) ?? const TextStyle(color: Colors.white70),
    );
  }

  Text get white70AndBold {
    return Text(
      data ?? '',
      style: style?.copyWith(
        color: Colors.white70,
        fontWeight: FontWeight.bold,
      ) ?? const TextStyle(color: Colors.white70, fontWeight: FontWeight.bold),
    );
  }
}
