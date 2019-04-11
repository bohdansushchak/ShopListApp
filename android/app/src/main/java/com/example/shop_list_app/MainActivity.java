package com.example.shop_list_app;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.widget.Toast;

import java.util.List;

import io.flutter.app.FlutterActivity;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugins.GeneratedPluginRegistrant;

public class MainActivity extends FlutterActivity {

    private static final String CHANNEL = "flutter.io/invite";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        GeneratedPluginRegistrant.registerWith(this);

        new MethodChannel(getFlutterView(), CHANNEL).setMethodCallHandler(
                (call, result) -> {
                    if (call.method.equals("inviteMethod")) {
                        if (call.hasArgument("urlToInvite")) {
                            String url = call.argument("urlToInvite").toString();
                            startActionSendIntent(url);
                        }
                    }
                });
    }

    private void startActionSendIntent(String url) {
        Intent intent = new Intent(Intent.ACTION_SEND);
        intent.putExtra(Intent.EXTRA_TEXT, url);
        intent.setType("text/plain");

        PackageManager packageManager = getPackageManager();
        List activities = packageManager.queryIntentActivities(intent,
                PackageManager.MATCH_DEFAULT_ONLY);
        boolean isIntentSafe = activities.size() > 0;

        if (isIntentSafe)
            startActivity(intent);
        else
            Toast.makeText(this, "Nie masz aplikacjii do wysylania zaproszenia", Toast.LENGTH_SHORT).show();
    }
}
