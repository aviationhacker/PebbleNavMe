.class Landroid/support/v4/text/TextDirectionHeuristicsCompat$e;
.super Landroid/support/v4/text/TextDirectionHeuristicsCompat$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/text/TextDirectionHeuristicsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# instance fields
.field private final a:Z


# direct methods
.method private constructor <init>(Landroid/support/v4/text/TextDirectionHeuristicsCompat$c;Z)V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0, p1}, Landroid/support/v4/text/TextDirectionHeuristicsCompat$d;-><init>(Landroid/support/v4/text/TextDirectionHeuristicsCompat$c;)V

    .line 157
    iput-boolean p2, p0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$e;->a:Z

    .line 158
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/text/TextDirectionHeuristicsCompat$c;ZLandroid/support/v4/text/TextDirectionHeuristicsCompat$1;)V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Landroid/support/v4/text/TextDirectionHeuristicsCompat$e;-><init>(Landroid/support/v4/text/TextDirectionHeuristicsCompat$c;Z)V

    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$e;->a:Z

    return v0
.end method
