package android.support.v4.app;

import android.R;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public class ListFragment extends Fragment {
    ListAdapter a;
    ListView b;
    View c;
    TextView d;
    View e;
    View f;
    CharSequence g;
    boolean h;
    private final Handler i = new Handler();
    private final Runnable aj = new Runnable() { // from class: android.support.v4.app.ListFragment.1
        @Override // java.lang.Runnable
        public void run() {
            ListFragment.this.b.focusableViewAvailable(ListFragment.this.b);
        }
    };
    private final AdapterView.OnItemClickListener ak = new AdapterView.OnItemClickListener() { // from class: android.support.v4.app.ListFragment.2
        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            ListFragment.this.onListItemClick((ListView) adapterView, view, i, j);
        }
    };

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        FragmentActivity activity = getActivity();
        FrameLayout frameLayout = new FrameLayout(activity);
        LinearLayout linearLayout = new LinearLayout(activity);
        linearLayout.setId(16711682);
        linearLayout.setOrientation(1);
        linearLayout.setVisibility(8);
        linearLayout.setGravity(17);
        linearLayout.addView(new ProgressBar(activity, null, R.attr.progressBarStyleLarge), new FrameLayout.LayoutParams(-2, -2));
        frameLayout.addView(linearLayout, new FrameLayout.LayoutParams(-1, -1));
        FrameLayout frameLayout2 = new FrameLayout(activity);
        frameLayout2.setId(16711683);
        TextView textView = new TextView(getActivity());
        textView.setId(16711681);
        textView.setGravity(17);
        frameLayout2.addView(textView, new FrameLayout.LayoutParams(-1, -1));
        ListView listView = new ListView(getActivity());
        listView.setId(R.id.list);
        listView.setDrawSelectorOnTop(false);
        frameLayout2.addView(listView, new FrameLayout.LayoutParams(-1, -1));
        frameLayout.addView(frameLayout2, new FrameLayout.LayoutParams(-1, -1));
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        return frameLayout;
    }

    @Override // android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        l();
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroyView() {
        this.i.removeCallbacks(this.aj);
        this.b = null;
        this.h = false;
        this.f = null;
        this.e = null;
        this.c = null;
        this.d = null;
        super.onDestroyView();
    }

    public void onListItemClick(ListView listView, View view, int i, long j) {
    }

    public void setListAdapter(ListAdapter listAdapter) {
        boolean z = this.a != null;
        this.a = listAdapter;
        if (this.b != null) {
            this.b.setAdapter(listAdapter);
            if (!this.h && !z) {
                a(true, getView().getWindowToken() != null);
            }
        }
    }

    public void setSelection(int i) {
        l();
        this.b.setSelection(i);
    }

    public int getSelectedItemPosition() {
        l();
        return this.b.getSelectedItemPosition();
    }

    public long getSelectedItemId() {
        l();
        return this.b.getSelectedItemId();
    }

    public ListView getListView() {
        l();
        return this.b;
    }

    public void setEmptyText(CharSequence charSequence) {
        l();
        if (this.d == null) {
            throw new IllegalStateException("Can't be used with a custom content view");
        }
        this.d.setText(charSequence);
        if (this.g == null) {
            this.b.setEmptyView(this.d);
        }
        this.g = charSequence;
    }

    public void setListShown(boolean z) {
        a(z, true);
    }

    public void setListShownNoAnimation(boolean z) {
        a(z, false);
    }

    private void a(boolean z, boolean z2) {
        l();
        if (this.e == null) {
            throw new IllegalStateException("Can't be used with a custom content view");
        }
        if (this.h != z) {
            this.h = z;
            if (z) {
                if (z2) {
                    this.e.startAnimation(AnimationUtils.loadAnimation(getActivity(), R.anim.fade_out));
                    this.f.startAnimation(AnimationUtils.loadAnimation(getActivity(), R.anim.fade_in));
                } else {
                    this.e.clearAnimation();
                    this.f.clearAnimation();
                }
                this.e.setVisibility(8);
                this.f.setVisibility(0);
                return;
            }
            if (z2) {
                this.e.startAnimation(AnimationUtils.loadAnimation(getActivity(), R.anim.fade_in));
                this.f.startAnimation(AnimationUtils.loadAnimation(getActivity(), R.anim.fade_out));
            } else {
                this.e.clearAnimation();
                this.f.clearAnimation();
            }
            this.e.setVisibility(0);
            this.f.setVisibility(8);
        }
    }

    public ListAdapter getListAdapter() {
        return this.a;
    }

    private void l() {
        if (this.b == null) {
            View view = getView();
            if (view == null) {
                throw new IllegalStateException("Content view not yet created");
            }
            if (view instanceof ListView) {
                this.b = (ListView) view;
            } else {
                this.d = (TextView) view.findViewById(16711681);
                if (this.d == null) {
                    this.c = view.findViewById(R.id.empty);
                } else {
                    this.d.setVisibility(8);
                }
                this.e = view.findViewById(16711682);
                this.f = view.findViewById(16711683);
                View viewFindViewById = view.findViewById(R.id.list);
                if (!(viewFindViewById instanceof ListView)) {
                    if (viewFindViewById == null) {
                        throw new RuntimeException("Your content must have a ListView whose id attribute is 'android.R.id.list'");
                    }
                    throw new RuntimeException("Content has view with id attribute 'android.R.id.list' that is not a ListView class");
                }
                this.b = (ListView) viewFindViewById;
                if (this.c != null) {
                    this.b.setEmptyView(this.c);
                } else if (this.g != null) {
                    this.d.setText(this.g);
                    this.b.setEmptyView(this.d);
                }
            }
            this.h = true;
            this.b.setOnItemClickListener(this.ak);
            if (this.a != null) {
                ListAdapter listAdapter = this.a;
                this.a = null;
                setListAdapter(listAdapter);
            } else if (this.e != null) {
                a(false, false);
            }
            this.i.post(this.aj);
        }
    }
}
