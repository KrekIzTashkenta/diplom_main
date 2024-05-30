package com.example.diplom_main

import androidx.annotation.NonNull;
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugins.GeneratedPluginRegistrant
import com.yandex.mapkit.MapKitFactory

class MainActivity: FlutterActivity() {
    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        MapKitFactory.setApiKey("09f9c70b-e3f1-4257-827c-5a5853e873dc")
        MapKitFactory.initialize(this)
        GeneratedPluginRegistrant.registerWith(flutterEngine)
    }
}
