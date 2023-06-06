.class public Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$a;,
        Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$c;,
        Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$b;,
        Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;,
        Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;,
        Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$b;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 53
    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 54
    new-instance v0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$a;

    invoke-direct {v0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$a;-><init>()V

    sput-object v0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->a:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$b;

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    new-instance v0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$c;

    invoke-direct {v0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$c;-><init>()V

    sput-object v0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->a:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$b;

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->b:Landroid/content/Context;

    .line 48
    return-void
.end method

.method public static from(Landroid/content/Context;)Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;
    .locals 1

    .prologue
    .line 43
    new-instance v0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;

    invoke-direct {v0, p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public authenticate(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;ILandroid/support/v4/os/CancellationSignal;Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;Landroid/os/Handler;)V
    .locals 7
    .param p1    # Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/support/v4/os/CancellationSignal;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 95
    sget-object v0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->a:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$b;

    iget-object v1, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->b:Landroid/content/Context;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$b;->a(Landroid/content/Context;Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;ILandroid/support/v4/os/CancellationSignal;Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;Landroid/os/Handler;)V

    .line 96
    return-void
.end method

.method public hasEnrolledFingerprints()Z
    .locals 2

    .prologue
    .line 66
    sget-object v0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->a:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$b;

    iget-object v1, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->b:Landroid/content/Context;

    invoke-interface {v0, v1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$b;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isHardwareDetected()Z
    .locals 2

    .prologue
    .line 75
    sget-object v0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->a:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$b;

    iget-object v1, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->b:Landroid/content/Context;

    invoke-interface {v0, v1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$b;->b(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
