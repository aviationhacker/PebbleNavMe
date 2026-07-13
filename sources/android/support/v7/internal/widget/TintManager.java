package android.support.v7.internal.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.support.v4.content.ContextCompat;
import android.support.v4.graphics.ColorUtils;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.util.LruCache;
import android.support.v7.appcompat.R;
import android.util.SparseArray;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class TintManager {
    public static final boolean SHOULD_BE_USED;
    private static final PorterDuff.Mode a;
    private static final WeakHashMap<Context, TintManager> b;
    private static final a c;
    private static final int[] d;
    private static final int[] e;
    private static final int[] f;
    private static final int[] g;
    private static final int[] h;
    private static final int[] i;
    private final WeakReference<Context> j;
    private SparseArray<ColorStateList> k;
    private ColorStateList l;

    static {
        SHOULD_BE_USED = Build.VERSION.SDK_INT < 21;
        a = PorterDuff.Mode.SRC_IN;
        b = new WeakHashMap<>();
        c = new a(6);
        d = new int[]{R.drawable.abc_textfield_search_default_mtrl_alpha, R.drawable.abc_textfield_default_mtrl_alpha, R.drawable.abc_ab_share_pack_mtrl_alpha};
        e = new int[]{R.drawable.abc_ic_ab_back_mtrl_am_alpha, R.drawable.abc_ic_go_search_api_mtrl_alpha, R.drawable.abc_ic_search_api_mtrl_alpha, R.drawable.abc_ic_commit_search_api_mtrl_alpha, R.drawable.abc_ic_clear_mtrl_alpha, R.drawable.abc_ic_menu_share_mtrl_alpha, R.drawable.abc_ic_menu_copy_mtrl_am_alpha, R.drawable.abc_ic_menu_cut_mtrl_alpha, R.drawable.abc_ic_menu_selectall_mtrl_alpha, R.drawable.abc_ic_menu_paste_mtrl_am_alpha, R.drawable.abc_ic_menu_moreoverflow_mtrl_alpha, R.drawable.abc_ic_voice_search_api_mtrl_alpha};
        f = new int[]{R.drawable.abc_textfield_activated_mtrl_alpha, R.drawable.abc_textfield_search_activated_mtrl_alpha, R.drawable.abc_cab_background_top_mtrl_alpha, R.drawable.abc_text_cursor_material};
        g = new int[]{R.drawable.abc_popup_background_mtrl_mult, R.drawable.abc_cab_background_internal_bg, R.drawable.abc_menu_hardkey_panel_mtrl_mult};
        h = new int[]{R.drawable.abc_edit_text_material, R.drawable.abc_tab_indicator_material, R.drawable.abc_textfield_search_material, R.drawable.abc_spinner_mtrl_am_alpha, R.drawable.abc_spinner_textfield_background_material, R.drawable.abc_ratingbar_full_material, R.drawable.abc_switch_track_mtrl_alpha, R.drawable.abc_switch_thumb_material, R.drawable.abc_btn_default_mtrl_shape, R.drawable.abc_btn_borderless_material};
        i = new int[]{R.drawable.abc_btn_check_material, R.drawable.abc_btn_radio_material};
    }

    public static Drawable getDrawable(Context context, int i2) {
        return b(i2) ? get(context).getDrawable(i2) : ContextCompat.getDrawable(context, i2);
    }

    public static TintManager get(Context context) {
        TintManager tintManager = b.get(context);
        if (tintManager == null) {
            TintManager tintManager2 = new TintManager(context);
            b.put(context, tintManager2);
            return tintManager2;
        }
        return tintManager;
    }

    private TintManager(Context context) {
        this.j = new WeakReference<>(context);
    }

    public Drawable getDrawable(int i2) {
        return getDrawable(i2, false);
    }

    public Drawable getDrawable(int i2, boolean z) {
        Context context = this.j.get();
        if (context == null) {
            return null;
        }
        Drawable drawable = ContextCompat.getDrawable(context, i2);
        if (drawable != null) {
            if (Build.VERSION.SDK_INT >= 8) {
                drawable = drawable.mutate();
            }
            ColorStateList tintList = getTintList(i2);
            if (tintList != null) {
                drawable = DrawableCompat.wrap(drawable);
                DrawableCompat.setTintList(drawable, tintList);
                PorterDuff.Mode modeA = a(i2);
                if (modeA != null) {
                    DrawableCompat.setTintMode(drawable, modeA);
                }
            } else {
                if (i2 == R.drawable.abc_cab_background_top_material) {
                    return new LayerDrawable(new Drawable[]{getDrawable(R.drawable.abc_cab_background_internal_bg), getDrawable(R.drawable.abc_cab_background_top_mtrl_alpha)});
                }
                if (!tintDrawableUsingColorFilter(i2, drawable) && z) {
                    drawable = null;
                }
            }
        }
        return drawable;
    }

    public final boolean tintDrawableUsingColorFilter(int i2, Drawable drawable) {
        int iRound;
        int i3;
        PorterDuff.Mode mode;
        boolean z;
        Context context = this.j.get();
        if (context == null) {
            return false;
        }
        PorterDuff.Mode mode2 = a;
        if (a(d, i2)) {
            i3 = R.attr.colorControlNormal;
            mode = mode2;
            z = true;
            iRound = -1;
        } else if (a(f, i2)) {
            i3 = R.attr.colorControlActivated;
            mode = mode2;
            z = true;
            iRound = -1;
        } else if (a(g, i2)) {
            z = true;
            mode = PorterDuff.Mode.MULTIPLY;
            i3 = 16842801;
            iRound = -1;
        } else if (i2 == R.drawable.abc_list_divider_mtrl_alpha) {
            i3 = android.R.attr.colorForeground;
            iRound = Math.round(40.8f);
            mode = mode2;
            z = true;
        } else {
            iRound = -1;
            i3 = 0;
            mode = mode2;
            z = false;
        }
        if (!z) {
            return false;
        }
        drawable.setColorFilter(a(ThemeUtils.getThemeAttrColor(context, i3), mode));
        if (iRound != -1) {
            drawable.setAlpha(iRound);
        }
        return true;
    }

    private static boolean a(int[] iArr, int i2) {
        for (int i3 : iArr) {
            if (i3 == i2) {
                return true;
            }
        }
        return false;
    }

    private static boolean b(int i2) {
        return a(e, i2) || a(d, i2) || a(f, i2) || a(h, i2) || a(g, i2) || a(i, i2) || i2 == R.drawable.abc_cab_background_top_material;
    }

    final PorterDuff.Mode a(int i2) {
        if (i2 != R.drawable.abc_switch_thumb_material) {
            return null;
        }
        return PorterDuff.Mode.MULTIPLY;
    }

    public final ColorStateList getTintList(int i2) {
        ColorStateList colorStateListF;
        Context context = this.j.get();
        if (context == null) {
            return null;
        }
        ColorStateList colorStateList = this.k != null ? this.k.get(i2) : null;
        if (colorStateList != null) {
            return colorStateList;
        }
        if (i2 == R.drawable.abc_edit_text_material) {
            colorStateListF = e(context);
        } else if (i2 == R.drawable.abc_switch_track_mtrl_alpha) {
            colorStateListF = c(context);
        } else if (i2 == R.drawable.abc_switch_thumb_material) {
            colorStateListF = d(context);
        } else if (i2 == R.drawable.abc_btn_default_mtrl_shape || i2 == R.drawable.abc_btn_borderless_material) {
            colorStateListF = f(context);
        } else if (i2 == R.drawable.abc_btn_colored_material) {
            colorStateListF = g(context);
        } else if (i2 == R.drawable.abc_spinner_mtrl_am_alpha || i2 == R.drawable.abc_spinner_textfield_background_material) {
            colorStateListF = h(context);
        } else if (a(e, i2)) {
            colorStateListF = ThemeUtils.getThemeAttrColorStateList(context, R.attr.colorControlNormal);
        } else if (a(h, i2)) {
            colorStateListF = a(context);
        } else {
            colorStateListF = a(i, i2) ? b(context) : colorStateList;
        }
        if (colorStateListF != null) {
            if (this.k == null) {
                this.k = new SparseArray<>();
            }
            this.k.append(i2, colorStateListF);
            return colorStateListF;
        }
        return colorStateListF;
    }

    private ColorStateList a(Context context) {
        if (this.l == null) {
            int themeAttrColor = ThemeUtils.getThemeAttrColor(context, R.attr.colorControlNormal);
            int themeAttrColor2 = ThemeUtils.getThemeAttrColor(context, R.attr.colorControlActivated);
            this.l = new ColorStateList(new int[][]{ThemeUtils.a, ThemeUtils.b, ThemeUtils.c, ThemeUtils.d, ThemeUtils.e, ThemeUtils.f, ThemeUtils.h}, new int[]{ThemeUtils.getDisabledThemeAttrColor(context, R.attr.colorControlNormal), themeAttrColor2, themeAttrColor2, themeAttrColor2, themeAttrColor2, themeAttrColor2, themeAttrColor});
        }
        return this.l;
    }

    private ColorStateList b(Context context) {
        return new ColorStateList(new int[][]{ThemeUtils.a, ThemeUtils.e, ThemeUtils.h}, new int[]{ThemeUtils.getDisabledThemeAttrColor(context, R.attr.colorControlNormal), ThemeUtils.getThemeAttrColor(context, R.attr.colorControlActivated), ThemeUtils.getThemeAttrColor(context, R.attr.colorControlNormal)});
    }

    private ColorStateList c(Context context) {
        return new ColorStateList(new int[][]{ThemeUtils.a, ThemeUtils.e, ThemeUtils.h}, new int[]{ThemeUtils.a(context, android.R.attr.colorForeground, 0.1f), ThemeUtils.a(context, R.attr.colorControlActivated, 0.3f), ThemeUtils.a(context, android.R.attr.colorForeground, 0.3f)});
    }

    private ColorStateList d(Context context) {
        int[][] iArr = new int[3][];
        int[] iArr2 = new int[3];
        ColorStateList themeAttrColorStateList = ThemeUtils.getThemeAttrColorStateList(context, R.attr.colorSwitchThumbNormal);
        if (themeAttrColorStateList != null && themeAttrColorStateList.isStateful()) {
            iArr[0] = ThemeUtils.a;
            iArr2[0] = themeAttrColorStateList.getColorForState(iArr[0], 0);
            iArr[1] = ThemeUtils.e;
            iArr2[1] = ThemeUtils.getThemeAttrColor(context, R.attr.colorControlActivated);
            iArr[2] = ThemeUtils.h;
            iArr2[2] = themeAttrColorStateList.getDefaultColor();
        } else {
            iArr[0] = ThemeUtils.a;
            iArr2[0] = ThemeUtils.getDisabledThemeAttrColor(context, R.attr.colorSwitchThumbNormal);
            iArr[1] = ThemeUtils.e;
            iArr2[1] = ThemeUtils.getThemeAttrColor(context, R.attr.colorControlActivated);
            iArr[2] = ThemeUtils.h;
            iArr2[2] = ThemeUtils.getThemeAttrColor(context, R.attr.colorSwitchThumbNormal);
        }
        return new ColorStateList(iArr, iArr2);
    }

    private ColorStateList e(Context context) {
        return new ColorStateList(new int[][]{ThemeUtils.a, ThemeUtils.g, ThemeUtils.h}, new int[]{ThemeUtils.getDisabledThemeAttrColor(context, R.attr.colorControlNormal), ThemeUtils.getThemeAttrColor(context, R.attr.colorControlNormal), ThemeUtils.getThemeAttrColor(context, R.attr.colorControlActivated)});
    }

    private ColorStateList f(Context context) {
        return a(context, R.attr.colorButtonNormal);
    }

    private ColorStateList g(Context context) {
        return a(context, R.attr.colorAccent);
    }

    private ColorStateList a(Context context, int i2) {
        int themeAttrColor = ThemeUtils.getThemeAttrColor(context, i2);
        int themeAttrColor2 = ThemeUtils.getThemeAttrColor(context, R.attr.colorControlHighlight);
        return new ColorStateList(new int[][]{ThemeUtils.a, ThemeUtils.d, ThemeUtils.b, ThemeUtils.h}, new int[]{ThemeUtils.getDisabledThemeAttrColor(context, R.attr.colorButtonNormal), ColorUtils.compositeColors(themeAttrColor2, themeAttrColor), ColorUtils.compositeColors(themeAttrColor2, themeAttrColor), themeAttrColor});
    }

    private ColorStateList h(Context context) {
        return new ColorStateList(new int[][]{ThemeUtils.a, ThemeUtils.g, ThemeUtils.h}, new int[]{ThemeUtils.getDisabledThemeAttrColor(context, R.attr.colorControlNormal), ThemeUtils.getThemeAttrColor(context, R.attr.colorControlNormal), ThemeUtils.getThemeAttrColor(context, R.attr.colorControlActivated)});
    }

    static class a extends LruCache<Integer, PorterDuffColorFilter> {
        public a(int i) {
            super(i);
        }

        PorterDuffColorFilter a(int i, PorterDuff.Mode mode) {
            return get(Integer.valueOf(b(i, mode)));
        }

        PorterDuffColorFilter a(int i, PorterDuff.Mode mode, PorterDuffColorFilter porterDuffColorFilter) {
            return put(Integer.valueOf(b(i, mode)), porterDuffColorFilter);
        }

        private static int b(int i, PorterDuff.Mode mode) {
            return ((i + 31) * 31) + mode.hashCode();
        }
    }

    public static void tintViewBackground(View view, TintInfo tintInfo) {
        Drawable background = view.getBackground();
        if (tintInfo.mHasTintList || tintInfo.mHasTintMode) {
            background.setColorFilter(a(tintInfo.mHasTintList ? tintInfo.mTintList : null, tintInfo.mHasTintMode ? tintInfo.mTintMode : a, view.getDrawableState()));
        } else {
            background.clearColorFilter();
        }
        if (Build.VERSION.SDK_INT <= 10) {
            view.invalidate();
        }
    }

    private static PorterDuffColorFilter a(ColorStateList colorStateList, PorterDuff.Mode mode, int[] iArr) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return a(colorStateList.getColorForState(iArr, 0), mode);
    }

    private static PorterDuffColorFilter a(int i2, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilterA = c.a(i2, mode);
        if (porterDuffColorFilterA == null) {
            PorterDuffColorFilter porterDuffColorFilter = new PorterDuffColorFilter(i2, mode);
            c.a(i2, mode, porterDuffColorFilter);
            return porterDuffColorFilter;
        }
        return porterDuffColorFilterA;
    }
}
