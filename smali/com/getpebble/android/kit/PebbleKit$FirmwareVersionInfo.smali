.class public Lcom/getpebble/android/kit/PebbleKit$FirmwareVersionInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getpebble/android/kit/PebbleKit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FirmwareVersionInfo"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Ljava/lang/String;


# direct methods
.method constructor <init>(IIILjava/lang/String;)V
    .locals 0

    .prologue
    .line 906
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 907
    iput p1, p0, Lcom/getpebble/android/kit/PebbleKit$FirmwareVersionInfo;->a:I

    .line 908
    iput p2, p0, Lcom/getpebble/android/kit/PebbleKit$FirmwareVersionInfo;->b:I

    .line 909
    iput p3, p0, Lcom/getpebble/android/kit/PebbleKit$FirmwareVersionInfo;->c:I

    .line 910
    iput-object p4, p0, Lcom/getpebble/android/kit/PebbleKit$FirmwareVersionInfo;->d:Ljava/lang/String;

    .line 911
    return-void
.end method


# virtual methods
.method public final getMajor()I
    .locals 1

    .prologue
    .line 914
    iget v0, p0, Lcom/getpebble/android/kit/PebbleKit$FirmwareVersionInfo;->a:I

    return v0
.end method

.method public final getMinor()I
    .locals 1

    .prologue
    .line 918
    iget v0, p0, Lcom/getpebble/android/kit/PebbleKit$FirmwareVersionInfo;->b:I

    return v0
.end method

.method public final getPoint()I
    .locals 1

    .prologue
    .line 922
    iget v0, p0, Lcom/getpebble/android/kit/PebbleKit$FirmwareVersionInfo;->c:I

    return v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 926
    iget-object v0, p0, Lcom/getpebble/android/kit/PebbleKit$FirmwareVersionInfo;->d:Ljava/lang/String;

    return-object v0
.end method
