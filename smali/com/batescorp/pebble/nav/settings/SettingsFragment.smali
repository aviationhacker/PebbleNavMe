.class public Lcom/batescorp/pebble/nav/settings/SettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 12
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 15
    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/settings/SettingsFragment;->addPreferencesFromResource(I)V

    .line 18
    return-void
.end method
