.class public Lcom/google/android/gms/appdatasearch/Feature;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/appdatasearch/zze;


# instance fields
.field final a:I

.field final b:Landroid/os/Bundle;

.field public final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/appdatasearch/zze;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/Feature;->CREATOR:Lcom/google/android/gms/appdatasearch/zze;

    return-void
.end method

.method constructor <init>(IILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/appdatasearch/Feature;->a:I

    iput p2, p0, Lcom/google/android/gms/appdatasearch/Feature;->id:I

    iput-object p3, p0, Lcom/google/android/gms/appdatasearch/Feature;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/Feature;->CREATOR:Lcom/google/android/gms/appdatasearch/zze;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/Feature;->CREATOR:Lcom/google/android/gms/appdatasearch/zze;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/appdatasearch/zze;->a(Lcom/google/android/gms/appdatasearch/Feature;Landroid/os/Parcel;I)V

    return-void
.end method
