.class public LCatalano/Math/SparseArray$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCatalano/Math/SparseArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Entry"
.end annotation


# instance fields
.field final synthetic a:LCatalano/Math/SparseArray;

.field public i:I

.field public x:D


# direct methods
.method public constructor <init>(LCatalano/Math/SparseArray;ID)V
    .locals 1

    .prologue
    .line 57
    iput-object p1, p0, LCatalano/Math/SparseArray$Entry;->a:LCatalano/Math/SparseArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p2, p0, LCatalano/Math/SparseArray$Entry;->i:I

    .line 59
    iput-wide p3, p0, LCatalano/Math/SparseArray$Entry;->x:D

    .line 60
    return-void
.end method
