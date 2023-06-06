.class public LCatalano/Imaging/Tools/FiltersSequence;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "LCatalano/Imaging/IApplyInPlace;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LCatalano/Imaging/Tools/FiltersSequence;->a:Ljava/util/List;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LCatalano/Imaging/IApplyInPlace;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LCatalano/Imaging/Tools/FiltersSequence;->a:Ljava/util/List;

    .line 55
    iput-object p1, p0, LCatalano/Imaging/Tools/FiltersSequence;->a:Ljava/util/List;

    .line 56
    return-void
.end method


# virtual methods
.method public add(LCatalano/Imaging/IApplyInPlace;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, LCatalano/Imaging/Tools/FiltersSequence;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method

.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, LCatalano/Imaging/Tools/FiltersSequence;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Imaging/IApplyInPlace;

    .line 76
    invoke-interface {v0, p1}, LCatalano/Imaging/IApplyInPlace;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    goto :goto_0

    .line 78
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, LCatalano/Imaging/Tools/FiltersSequence;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 71
    return-void
.end method
