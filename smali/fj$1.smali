.class final Lfj$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfj;->a(Lfj$b;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfj$b;


# direct methods
.method constructor <init>(Lfj$b;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lfj$1;->a:Lfj$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lfj$1;->a:Lfj$b;

    invoke-interface {v0, p1}, Lfj$b;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lfj$1;->a:Lfj$b;

    invoke-interface {v0, p1}, Lfj$b;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
