.class final Landroid/support/v4/print/PrintHelper$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/print/PrintHelper$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/print/PrintHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/support/v4/print/PrintHelperKitkat;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Landroid/support/v4/print/PrintHelperKitkat;

    invoke-direct {v0, p1}, Landroid/support/v4/print/PrintHelperKitkat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/print/PrintHelper$a;->a:Landroid/support/v4/print/PrintHelperKitkat;

    .line 161
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$a;->a:Landroid/support/v4/print/PrintHelperKitkat;

    invoke-virtual {v0}, Landroid/support/v4/print/PrintHelperKitkat;->a()I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$a;->a:Landroid/support/v4/print/PrintHelperKitkat;

    invoke-virtual {v0, p1}, Landroid/support/v4/print/PrintHelperKitkat;->a(I)V

    .line 166
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
    .locals 2

    .prologue
    .line 196
    const/4 v0, 0x0

    .line 197
    if-eqz p3, :cond_0

    .line 198
    new-instance v0, Landroid/support/v4/print/PrintHelper$a$1;

    invoke-direct {v0, p0, p3}, Landroid/support/v4/print/PrintHelper$a$1;-><init>(Landroid/support/v4/print/PrintHelper$a;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V

    .line 205
    :cond_0
    iget-object v1, p0, Landroid/support/v4/print/PrintHelper$a;->a:Landroid/support/v4/print/PrintHelperKitkat;

    invoke-virtual {v1, p1, p2, v0}, Landroid/support/v4/print/PrintHelperKitkat;->a(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;)V

    .line 206
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
    .locals 2

    .prologue
    .line 211
    const/4 v0, 0x0

    .line 212
    if-eqz p3, :cond_0

    .line 213
    new-instance v0, Landroid/support/v4/print/PrintHelper$a$2;

    invoke-direct {v0, p0, p3}, Landroid/support/v4/print/PrintHelper$a$2;-><init>(Landroid/support/v4/print/PrintHelper$a;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V

    .line 220
    :cond_0
    iget-object v1, p0, Landroid/support/v4/print/PrintHelper$a;->a:Landroid/support/v4/print/PrintHelperKitkat;

    invoke-virtual {v1, p1, p2, v0}, Landroid/support/v4/print/PrintHelperKitkat;->a(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;)V

    .line 221
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$a;->a:Landroid/support/v4/print/PrintHelperKitkat;

    invoke-virtual {v0}, Landroid/support/v4/print/PrintHelperKitkat;->c()I

    move-result v0

    return v0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$a;->a:Landroid/support/v4/print/PrintHelperKitkat;

    invoke-virtual {v0, p1}, Landroid/support/v4/print/PrintHelperKitkat;->b(I)V

    .line 176
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$a;->a:Landroid/support/v4/print/PrintHelperKitkat;

    invoke-virtual {v0}, Landroid/support/v4/print/PrintHelperKitkat;->b()I

    move-result v0

    return v0
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$a;->a:Landroid/support/v4/print/PrintHelperKitkat;

    invoke-virtual {v0, p1}, Landroid/support/v4/print/PrintHelperKitkat;->c(I)V

    .line 186
    return-void
.end method
