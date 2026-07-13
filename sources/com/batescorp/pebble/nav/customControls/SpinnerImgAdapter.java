package com.batescorp.pebble.nav.customControls;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import com.batescorp.pebble.nav.R;

/* JADX INFO: loaded from: classes.dex */
public class SpinnerImgAdapter extends ArrayAdapter<Integer> {
    private final Activity a;
    private final Integer[] b;

    public SpinnerImgAdapter(Activity activity, Integer[] numArr) {
        super(activity, R.layout.image_spinner, numArr);
        this.a = activity;
        this.b = numArr;
    }

    static class a {
        public ImageView a;

        a() {
        }
    }

    @Override // android.widget.ArrayAdapter, android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        return a(i, view);
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        return a(i, view);
    }

    private View a(int i, View view) {
        a aVar;
        if (view == null) {
            view = this.a.getLayoutInflater().inflate(R.layout.image_spinner, (ViewGroup) null, true);
            a aVar2 = new a();
            aVar2.a = (ImageView) view.findViewById(R.id.icon);
            view.setTag(aVar2);
            aVar = aVar2;
        } else {
            aVar = (a) view.getTag();
        }
        aVar.a.setImageResource(this.b[i].intValue());
        return view;
    }
}
