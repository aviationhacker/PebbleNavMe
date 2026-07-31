.class Landroid/support/v4/print/PrintHelper$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/print/PrintHelper$a;->a(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;

.field final synthetic b:Landroid/support/v4/print/PrintHelper$a;


# direct methods
.method constructor <init>(Landroid/support/v4/print/PrintHelper$a;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Landroid/support/v4/print/PrintHelper$a$1;->b:Landroid/support/v4/print/PrintHelper$a;

    iput-object p2, p0, Landroid/support/v4/print/PrintHelper$a$1;->a:Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$a$1;->a:Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;

    invoke-interface {v0}, Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;->onFinish()V

    .line 202
    return-void
.end method
