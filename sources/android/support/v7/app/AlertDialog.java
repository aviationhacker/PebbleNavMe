package android.support.v7.app;

import android.content.Context;
import android.content.DialogInterface;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Message;
import android.support.v7.app.AlertController;
import android.support.v7.appcompat.R;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;

/* JADX INFO: loaded from: classes.dex */
public class AlertDialog extends AppCompatDialog implements DialogInterface {
    private AlertController a;

    protected AlertDialog(Context context) {
        this(context, a(context, 0), true);
    }

    protected AlertDialog(Context context, int i) {
        this(context, i, true);
    }

    AlertDialog(Context context, int i, boolean z) {
        super(context, a(context, i));
        this.a = new AlertController(getContext(), this, getWindow());
    }

    protected AlertDialog(Context context, boolean z, DialogInterface.OnCancelListener onCancelListener) {
        super(context, a(context, 0));
        setCancelable(z);
        setOnCancelListener(onCancelListener);
        this.a = new AlertController(context, this, getWindow());
    }

    static int a(Context context, int i) {
        if (i < 16777216) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(R.attr.alertDialogTheme, typedValue, true);
            return typedValue.resourceId;
        }
        return i;
    }

    public Button getButton(int i) {
        return this.a.d(i);
    }

    public ListView getListView() {
        return this.a.b();
    }

    @Override // android.support.v7.app.AppCompatDialog, android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        this.a.a(charSequence);
    }

    public void setCustomTitle(View view) {
        this.a.b(view);
    }

    public void setMessage(CharSequence charSequence) {
        this.a.b(charSequence);
    }

    public void setView(View view) {
        this.a.c(view);
    }

    public void setView(View view, int i, int i2, int i3, int i4) {
        this.a.a(view, i, i2, i3, i4);
    }

    public void setButton(int i, CharSequence charSequence, Message message) {
        this.a.a(i, charSequence, null, message);
    }

    public void setButton(int i, CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        this.a.a(i, charSequence, onClickListener, null);
    }

    public void setIcon(int i) {
        this.a.b(i);
    }

    public void setIcon(Drawable drawable) {
        this.a.a(drawable);
    }

    public void setIconAttribute(int i) {
        TypedValue typedValue = new TypedValue();
        getContext().getTheme().resolveAttribute(i, typedValue, true);
        this.a.b(typedValue.resourceId);
    }

    @Override // android.support.v7.app.AppCompatDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.a.a();
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (this.a.a(i, keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (this.a.b(i, keyEvent)) {
            return true;
        }
        return super.onKeyUp(i, keyEvent);
    }

    public static class Builder {
        private final AlertController.AlertParams a;
        private int b;

        public Builder(Context context) {
            this(context, AlertDialog.a(context, 0));
        }

        public Builder(Context context, int i) {
            this.a = new AlertController.AlertParams(new ContextThemeWrapper(context, AlertDialog.a(context, i)));
            this.b = i;
        }

        public Context getContext() {
            return this.a.mContext;
        }

        public Builder setTitle(int i) {
            this.a.mTitle = this.a.mContext.getText(i);
            return this;
        }

        public Builder setTitle(CharSequence charSequence) {
            this.a.mTitle = charSequence;
            return this;
        }

        public Builder setCustomTitle(View view) {
            this.a.mCustomTitleView = view;
            return this;
        }

        public Builder setMessage(int i) {
            this.a.mMessage = this.a.mContext.getText(i);
            return this;
        }

        public Builder setMessage(CharSequence charSequence) {
            this.a.mMessage = charSequence;
            return this;
        }

        public Builder setIcon(int i) {
            this.a.mIconId = i;
            return this;
        }

        public Builder setIcon(Drawable drawable) {
            this.a.mIcon = drawable;
            return this;
        }

        public Builder setIconAttribute(int i) {
            TypedValue typedValue = new TypedValue();
            this.a.mContext.getTheme().resolveAttribute(i, typedValue, true);
            this.a.mIconId = typedValue.resourceId;
            return this;
        }

        public Builder setPositiveButton(int i, DialogInterface.OnClickListener onClickListener) {
            this.a.mPositiveButtonText = this.a.mContext.getText(i);
            this.a.mPositiveButtonListener = onClickListener;
            return this;
        }

        public Builder setPositiveButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            this.a.mPositiveButtonText = charSequence;
            this.a.mPositiveButtonListener = onClickListener;
            return this;
        }

        public Builder setNegativeButton(int i, DialogInterface.OnClickListener onClickListener) {
            this.a.mNegativeButtonText = this.a.mContext.getText(i);
            this.a.mNegativeButtonListener = onClickListener;
            return this;
        }

        public Builder setNegativeButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            this.a.mNegativeButtonText = charSequence;
            this.a.mNegativeButtonListener = onClickListener;
            return this;
        }

        public Builder setNeutralButton(int i, DialogInterface.OnClickListener onClickListener) {
            this.a.mNeutralButtonText = this.a.mContext.getText(i);
            this.a.mNeutralButtonListener = onClickListener;
            return this;
        }

        public Builder setNeutralButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            this.a.mNeutralButtonText = charSequence;
            this.a.mNeutralButtonListener = onClickListener;
            return this;
        }

        public Builder setCancelable(boolean z) {
            this.a.mCancelable = z;
            return this;
        }

        public Builder setOnCancelListener(DialogInterface.OnCancelListener onCancelListener) {
            this.a.mOnCancelListener = onCancelListener;
            return this;
        }

        public Builder setOnDismissListener(DialogInterface.OnDismissListener onDismissListener) {
            this.a.mOnDismissListener = onDismissListener;
            return this;
        }

        public Builder setOnKeyListener(DialogInterface.OnKeyListener onKeyListener) {
            this.a.mOnKeyListener = onKeyListener;
            return this;
        }

        public Builder setItems(int i, DialogInterface.OnClickListener onClickListener) {
            this.a.mItems = this.a.mContext.getResources().getTextArray(i);
            this.a.mOnClickListener = onClickListener;
            return this;
        }

        public Builder setItems(CharSequence[] charSequenceArr, DialogInterface.OnClickListener onClickListener) {
            this.a.mItems = charSequenceArr;
            this.a.mOnClickListener = onClickListener;
            return this;
        }

        public Builder setAdapter(ListAdapter listAdapter, DialogInterface.OnClickListener onClickListener) {
            this.a.mAdapter = listAdapter;
            this.a.mOnClickListener = onClickListener;
            return this;
        }

        public Builder setCursor(Cursor cursor, DialogInterface.OnClickListener onClickListener, String str) {
            this.a.mCursor = cursor;
            this.a.mLabelColumn = str;
            this.a.mOnClickListener = onClickListener;
            return this;
        }

        public Builder setMultiChoiceItems(int i, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
            this.a.mItems = this.a.mContext.getResources().getTextArray(i);
            this.a.mOnCheckboxClickListener = onMultiChoiceClickListener;
            this.a.mCheckedItems = zArr;
            this.a.mIsMultiChoice = true;
            return this;
        }

        public Builder setMultiChoiceItems(CharSequence[] charSequenceArr, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
            this.a.mItems = charSequenceArr;
            this.a.mOnCheckboxClickListener = onMultiChoiceClickListener;
            this.a.mCheckedItems = zArr;
            this.a.mIsMultiChoice = true;
            return this;
        }

        public Builder setMultiChoiceItems(Cursor cursor, String str, String str2, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
            this.a.mCursor = cursor;
            this.a.mOnCheckboxClickListener = onMultiChoiceClickListener;
            this.a.mIsCheckedColumn = str;
            this.a.mLabelColumn = str2;
            this.a.mIsMultiChoice = true;
            return this;
        }

        public Builder setSingleChoiceItems(int i, int i2, DialogInterface.OnClickListener onClickListener) {
            this.a.mItems = this.a.mContext.getResources().getTextArray(i);
            this.a.mOnClickListener = onClickListener;
            this.a.mCheckedItem = i2;
            this.a.mIsSingleChoice = true;
            return this;
        }

        public Builder setSingleChoiceItems(Cursor cursor, int i, String str, DialogInterface.OnClickListener onClickListener) {
            this.a.mCursor = cursor;
            this.a.mOnClickListener = onClickListener;
            this.a.mCheckedItem = i;
            this.a.mLabelColumn = str;
            this.a.mIsSingleChoice = true;
            return this;
        }

        public Builder setSingleChoiceItems(CharSequence[] charSequenceArr, int i, DialogInterface.OnClickListener onClickListener) {
            this.a.mItems = charSequenceArr;
            this.a.mOnClickListener = onClickListener;
            this.a.mCheckedItem = i;
            this.a.mIsSingleChoice = true;
            return this;
        }

        public Builder setSingleChoiceItems(ListAdapter listAdapter, int i, DialogInterface.OnClickListener onClickListener) {
            this.a.mAdapter = listAdapter;
            this.a.mOnClickListener = onClickListener;
            this.a.mCheckedItem = i;
            this.a.mIsSingleChoice = true;
            return this;
        }

        public Builder setOnItemSelectedListener(AdapterView.OnItemSelectedListener onItemSelectedListener) {
            this.a.mOnItemSelectedListener = onItemSelectedListener;
            return this;
        }

        public Builder setView(int i) {
            this.a.mView = null;
            this.a.mViewLayoutResId = i;
            this.a.mViewSpacingSpecified = false;
            return this;
        }

        public Builder setView(View view) {
            this.a.mView = view;
            this.a.mViewLayoutResId = 0;
            this.a.mViewSpacingSpecified = false;
            return this;
        }

        public Builder setView(View view, int i, int i2, int i3, int i4) {
            this.a.mView = view;
            this.a.mViewLayoutResId = 0;
            this.a.mViewSpacingSpecified = true;
            this.a.mViewSpacingLeft = i;
            this.a.mViewSpacingTop = i2;
            this.a.mViewSpacingRight = i3;
            this.a.mViewSpacingBottom = i4;
            return this;
        }

        public Builder setInverseBackgroundForced(boolean z) {
            this.a.mForceInverseBackground = z;
            return this;
        }

        public Builder setRecycleOnMeasureEnabled(boolean z) {
            this.a.mRecycleOnMeasure = z;
            return this;
        }

        public AlertDialog create() {
            AlertDialog alertDialog = new AlertDialog(this.a.mContext, this.b, false);
            this.a.apply(alertDialog.a);
            alertDialog.setCancelable(this.a.mCancelable);
            if (this.a.mCancelable) {
                alertDialog.setCanceledOnTouchOutside(true);
            }
            alertDialog.setOnCancelListener(this.a.mOnCancelListener);
            alertDialog.setOnDismissListener(this.a.mOnDismissListener);
            if (this.a.mOnKeyListener != null) {
                alertDialog.setOnKeyListener(this.a.mOnKeyListener);
            }
            return alertDialog;
        }

        public AlertDialog show() {
            AlertDialog alertDialogCreate = create();
            alertDialogCreate.show();
            return alertDialogCreate;
        }
    }
}
