.class public Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/getpebble/android/kit/util/PebbleDictionary;

.field private b:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;


# direct methods
.method public constructor <init>(Lcom/getpebble/android/kit/util/PebbleDictionary;Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntry;->a:Lcom/getpebble/android/kit/util/PebbleDictionary;

    .line 12
    iput-object p2, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntry;->b:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    .line 13
    return-void
.end method


# virtual methods
.method public getPebbleDictionary()Lcom/getpebble/android/kit/util/PebbleDictionary;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntry;->a:Lcom/getpebble/android/kit/util/PebbleDictionary;

    return-object v0
.end method

.method public getType()Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntry;->b:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    return-object v0
.end method
