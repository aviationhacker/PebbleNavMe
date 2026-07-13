package com.batescorp.pebble.nav.service;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Environment;
import android.util.Log;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;

/* JADX INFO: loaded from: classes.dex */
public class DevEmailIntentService extends IntentService {
    public static void startSendEmail(Context context) {
        Intent intent = new Intent(context, (Class<?>) DevEmailIntentService.class);
        intent.setAction("com.batescorp.pebble.nav.service.action.EMAIL");
        context.startService(intent);
    }

    public DevEmailIntentService() {
        super("DevEmailIntentService");
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) throws Throwable {
        if (intent != null) {
            Log.d("DevEmailIntentService", "onHandleIntent " + intent.getAction());
            if ("com.batescorp.pebble.nav.service.action.EMAIL".equals(intent.getAction())) {
                a();
            }
        }
    }

    private void a() throws Throwable {
        BufferedWriter bufferedWriter;
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("logcat -d").getInputStream()));
            StringBuilder sb = new StringBuilder();
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                } else {
                    sb.append(line).append("\n");
                }
            }
            Log.d("DevEmailIntentService", "Logs " + ((Object) sb));
            File file = new File(Environment.getExternalStorageDirectory(), "logcat.navme.txt");
            try {
                bufferedWriter = new BufferedWriter(new FileWriter(file));
            } catch (Throwable th) {
                th = th;
                bufferedWriter = null;
            }
            try {
                bufferedWriter.write(sb.toString());
                if (bufferedWriter != null) {
                    bufferedWriter.flush();
                    bufferedWriter.close();
                }
                Log.d("DevEmailIntentService", "Logs " + file.getAbsoluteFile().toURI());
                Intent intent = new Intent("android.intent.action.SENDTO");
                intent.setData(Uri.parse("mailto:"));
                intent.putExtra("android.intent.extra.EMAIL", new String[]{"bates.apps@gmail.com"});
                intent.putExtra("android.intent.extra.SUBJECT", "LogCat");
                intent.putExtra("android.intent.extra.TEXT", "[Reason for email]");
                intent.putExtra("android.intent.extra.STREAM", Uri.fromFile(file.getAbsoluteFile()));
                intent.setFlags(268435457);
                if (intent.resolveActivity(getPackageManager()) != null) {
                    startActivity(intent);
                }
            } catch (Throwable th2) {
                th = th2;
                if (bufferedWriter != null) {
                    bufferedWriter.flush();
                    bufferedWriter.close();
                }
                throw th;
            }
        } catch (IOException e) {
            Log.d("DevEmailIntentService", "Error getting logs ", e);
        }
    }
}
