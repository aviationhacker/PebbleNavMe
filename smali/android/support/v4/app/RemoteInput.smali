.class public Landroid/support/v4/app/RemoteInput;
.super Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/RemoteInput$b;,
        Landroid/support/v4/app/RemoteInput$d;,
        Landroid/support/v4/app/RemoteInput$c;,
        Landroid/support/v4/app/RemoteInput$a;,
        Landroid/support/v4/app/RemoteInput$Builder;
    }
.end annotation


# static fields
.field public static final EXTRA_RESULTS_DATA:Ljava/lang/String; = "android.remoteinput.resultsData"

.field public static final FACTORY:Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;

.field public static final RESULTS_CLIP_LABEL:Ljava/lang/String; = "android.remoteinput.results"

.field private static final f:Landroid/support/v4/app/RemoteInput$a;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/CharSequence;

.field private final c:[Ljava/lang/CharSequence;

.field private final d:Z

.field private final e:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 253
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 254
    new-instance v0, Landroid/support/v4/app/RemoteInput$b;

    invoke-direct {v0}, Landroid/support/v4/app/RemoteInput$b;-><init>()V

    sput-object v0, Landroid/support/v4/app/RemoteInput;->f:Landroid/support/v4/app/RemoteInput$a;

    .line 263
    :goto_0
    new-instance v0, Landroid/support/v4/app/RemoteInput$1;

    invoke-direct {v0}, Landroid/support/v4/app/RemoteInput$1;-><init>()V

    sput-object v0, Landroid/support/v4/app/RemoteInput;->FACTORY:Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;

    return-void

    .line 255
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 256
    new-instance v0, Landroid/support/v4/app/RemoteInput$d;

    invoke-direct {v0}, Landroid/support/v4/app/RemoteInput$d;-><init>()V

    sput-object v0, Landroid/support/v4/app/RemoteInput;->f:Landroid/support/v4/app/RemoteInput$a;

    goto :goto_0

    .line 258
    :cond_1
    new-instance v0, Landroid/support/v4/app/RemoteInput$c;

    invoke-direct {v0}, Landroid/support/v4/app/RemoteInput$c;-><init>()V

    sput-object v0, Landroid/support/v4/app/RemoteInput;->f:Landroid/support/v4/app/RemoteInput$a;

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;-><init>()V

    .line 45
    iput-object p1, p0, Landroid/support/v4/app/RemoteInput;->a:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Landroid/support/v4/app/RemoteInput;->b:Ljava/lang/CharSequence;

    .line 47
    iput-object p3, p0, Landroid/support/v4/app/RemoteInput;->c:[Ljava/lang/CharSequence;

    .line 48
    iput-boolean p4, p0, Landroid/support/v4/app/RemoteInput;->d:Z

    .line 49
    iput-object p5, p0, Landroid/support/v4/app/RemoteInput;->e:Landroid/os/Bundle;

    .line 50
    return-void
.end method

.method public static addResultsToIntent([Landroid/support/v4/app/RemoteInput;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 204
    sget-object v0, Landroid/support/v4/app/RemoteInput;->f:Landroid/support/v4/app/RemoteInput$a;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/app/RemoteInput$a;->a([Landroid/support/v4/app/RemoteInput;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 205
    return-void
.end method

.method public static getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 188
    sget-object v0, Landroid/support/v4/app/RemoteInput;->f:Landroid/support/v4/app/RemoteInput$a;

    invoke-interface {v0, p0}, Landroid/support/v4/app/RemoteInput$a;->a(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAllowFreeFormInput()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Landroid/support/v4/app/RemoteInput;->d:Z

    return v0
.end method

.method public getChoices()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Landroid/support/v4/app/RemoteInput;->c:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Landroid/support/v4/app/RemoteInput;->e:Landroid/os/Bundle;

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Landroid/support/v4/app/RemoteInput;->b:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getResultKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Landroid/support/v4/app/RemoteInput;->a:Ljava/lang/String;

    return-object v0
.end method
