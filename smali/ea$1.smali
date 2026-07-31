.class final Lea$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lea;->a(Lea$a;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lea$a;


# direct methods
.method constructor <init>(Lea$a;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lea$1;->a:Lea$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityStateChanged(Z)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lea$1;->a:Lea$a;

    invoke-interface {v0, p1}, Lea$a;->a(Z)V

    .line 40
    return-void
.end method
