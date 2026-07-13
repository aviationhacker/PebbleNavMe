package com.batescorp.pebble.nav.activity;

import android.app.AlertDialog;
import android.app.ListActivity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.provider.Settings;
import android.support.v4.app.ActivityCompat;
import android.util.Log;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.batescorp.pebble.nav.R;
import com.batescorp.pebble.nav.customControls.SpinnerImgAdapter;
import com.batescorp.pebble.nav.processor.NavConfig;
import com.batescorp.pebble.nav.processor.NavType;
import com.batescorp.pebble.nav.service.NavProcessingService;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class DestinationActivity extends ListActivity {
    static final String TAG = "DestinationActivity";
    private CustomListViewAdapter adapter = null;

    @Override // android.app.ListActivity
    protected void onListItemClick(ListView listView, View view, int i, long j) {
        super.onListItemClick(listView, view, i, j);
        Log.d(TAG, "onListItemClick : " + j);
        Intent intent = new Intent();
        intent.setClass(this, NavProcessingService.class);
        intent.setAction("com.batescorp.pebble.nav.START_NAV");
        intent.putExtra("map.direction", i);
        startService(intent);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        updateList();
        registerForContextMenu(getListView());
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        checkSecurity();
    }

    @Override // android.app.Activity, android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        super.onCreateContextMenu(contextMenu, view, contextMenuInfo);
        getMenuInflater().inflate(R.menu.destination_action_menu, contextMenu);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.destination_action_bar, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case R.id.action_add /* 2131558501 */:
                Log.d(TAG, "Add");
                createNewDestination(null);
                return true;
            default:
                return super.onOptionsItemSelected(menuItem);
        }
    }

    @Override // android.app.Activity
    public boolean onContextItemSelected(MenuItem menuItem) {
        AdapterView.AdapterContextMenuInfo adapterContextMenuInfo = (AdapterView.AdapterContextMenuInfo) menuItem.getMenuInfo();
        switch (menuItem.getItemId()) {
            case R.id.action_edit /* 2131558502 */:
                Log.d(TAG, "Edit : " + adapterContextMenuInfo.position);
                createNewDestination(Integer.valueOf(adapterContextMenuInfo.position));
                return true;
            case R.id.action_delete /* 2131558503 */:
                Log.d(TAG, "Delete : " + adapterContextMenuInfo.position);
                this.adapter.remove(this.adapter.getItem(adapterContextMenuInfo.position));
                saveList();
                onContentChanged();
                return true;
            default:
                return super.onContextItemSelected(menuItem);
        }
    }

    private void checkSecurity() {
        if (!Settings.System.canWrite(this)) {
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            builder.setTitle("Device write access  ");
            builder.setMessage("NavMe unlocks the screen to automatically start navigation; it needs write permission to lock the screen quickly when done to reduce battery consumption.").setCancelable(true).setPositiveButton("Ok", new DialogInterface.OnClickListener() { // from class: com.batescorp.pebble.nav.activity.DestinationActivity.2
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    ActivityCompat.requestPermissions(DestinationActivity.this, new String[]{"android.permission.WRITE_SETTINGS"}, 101);
                    Intent intent = new Intent("android.settings.action.MANAGE_WRITE_SETTINGS");
                    intent.setData(Uri.parse("package:" + DestinationActivity.this.getPackageName()));
                    DestinationActivity.this.startActivity(intent);
                }
            }).setNegativeButton("Cancel", new DialogInterface.OnClickListener() { // from class: com.batescorp.pebble.nav.activity.DestinationActivity.1
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                }
            });
            builder.create().show();
        }
    }

    private void createNewDestination(final Integer num) {
        int i = 0;
        View viewInflate = getLayoutInflater().inflate(R.layout.destination_alert, (ViewGroup) null);
        final Spinner spinner = (Spinner) viewInflate.findViewById(R.id.navtype);
        spinner.setAdapter((SpinnerAdapter) new SpinnerImgAdapter(this, new Integer[]{Integer.valueOf(R.drawable.ic_directions_car_active), Integer.valueOf(R.drawable.ic_directions_bicycling_active), Integer.valueOf(R.drawable.ic_directions_walking_active)}));
        final TextView textView = (TextView) viewInflate.findViewById(R.id.description);
        final TextView textView2 = (TextView) viewInflate.findViewById(R.id.destination);
        if (num != null) {
            DestinationValue destinationValue = (DestinationValue) getListView().getItemAtPosition(num.intValue());
            if (destinationValue != null) {
                textView.setText(destinationValue.getDescription());
                textView2.setText(destinationValue.getDestination());
                while (true) {
                    if (i >= spinner.getCount()) {
                        break;
                    }
                    if (!destinationValue.getNavType().getResourceId().equals(spinner.getItemAtPosition(i))) {
                        i++;
                    } else {
                        spinner.setSelection(i);
                        break;
                    }
                }
            } else {
                return;
            }
        }
        AlertDialog alertDialogCreate = new AlertDialog.Builder(this).setView(viewInflate).setPositiveButton("ok", new DialogInterface.OnClickListener() { // from class: com.batescorp.pebble.nav.activity.DestinationActivity.4
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                try {
                    Log.d(DestinationActivity.TAG, "description : " + ((Object) textView.getText()));
                    Log.d(DestinationActivity.TAG, "destination : " + ((Object) textView2.getText()));
                    Log.d(DestinationActivity.TAG, "navType     : " + spinner.getSelectedItem());
                    if (num == null) {
                        DestinationActivity.this.adapter.add(new DestinationValue(textView.getText().toString(), textView2.getText().toString(), NavType.fromResourceId((Integer) spinner.getSelectedItem())));
                    } else {
                        DestinationActivity.this.adapter.getItem(num.intValue()).update(textView.getText().toString(), textView2.getText().toString(), NavType.fromResourceId((Integer) spinner.getSelectedItem()));
                    }
                    DestinationActivity.this.saveList();
                    DestinationActivity.this.onContentChanged();
                } catch (Throwable th) {
                    Log.d(DestinationActivity.TAG, "ERROR : ", th);
                }
            }
        }).setNegativeButton("cancel", new DialogInterface.OnClickListener() { // from class: com.batescorp.pebble.nav.activity.DestinationActivity.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
            }
        }).create();
        if (num == null) {
            alertDialogCreate.setTitle("Create new destination");
        } else {
            alertDialogCreate.setTitle("Edit destination");
        }
        alertDialogCreate.show();
    }

    protected void updateList() {
        ArrayList arrayList = new ArrayList();
        Iterator<DestinationValue> it = getDestinations().iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        this.adapter = new CustomListViewAdapter(this, R.layout.destination_row, arrayList);
        setListAdapter(this.adapter);
    }

    protected void saveList() {
        Log.d(TAG, "saveList");
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.adapter.getCount(); i++) {
            Log.d(TAG, "saveList - " + i);
            arrayList.add(this.adapter.getItem(i));
        }
        Log.d(TAG, "saveList - before update");
        NavConfig.getInstance(this).updateDestinations(arrayList);
        Log.d(TAG, "saveList - before update");
    }

    private Collection<DestinationValue> getDestinations() {
        return NavConfig.getInstance(this).getDestinations();
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
    }

    public class CustomListViewAdapter extends ArrayAdapter<DestinationValue> {
        Context context;

        @Override // android.widget.ArrayAdapter
        public void add(DestinationValue destinationValue) {
            super.add(destinationValue);
        }

        @Override // android.widget.ArrayAdapter
        public void remove(DestinationValue destinationValue) {
            super.remove(destinationValue);
        }

        public CustomListViewAdapter(Context context, int i, List<DestinationValue> list) {
            super(context, i, list);
            this.context = context;
        }

        class ViewHolder {
            ImageView imageView;
            TextView textDestination;
            TextView txtDesc;

            private ViewHolder() {
            }
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            ViewHolder viewHolder;
            DestinationValue item = getItem(i);
            LayoutInflater layoutInflater = (LayoutInflater) this.context.getSystemService("layout_inflater");
            if (view == null) {
                view = layoutInflater.inflate(R.layout.destination_row, (ViewGroup) null);
                ViewHolder viewHolder2 = new ViewHolder();
                viewHolder2.txtDesc = (TextView) view.findViewById(R.id.description);
                viewHolder2.imageView = (ImageView) view.findViewById(R.id.icon);
                viewHolder2.textDestination = (TextView) view.findViewById(R.id.destination);
                view.setTag(viewHolder2);
                viewHolder = viewHolder2;
            } else {
                viewHolder = (ViewHolder) view.getTag();
            }
            viewHolder.imageView.setImageDrawable(DestinationActivity.this.getResources().getDrawable(item.getNavType().getResourceId().intValue()));
            viewHolder.txtDesc.setText(item.getDescription());
            viewHolder.textDestination.setText(item.getDestination());
            return view;
        }
    }
}
