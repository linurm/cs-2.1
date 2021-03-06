.class public Lcom/google/android/gms/fitness/request/StopBleScanRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/StopBleScanRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mVersionCode:I

.field private final zzaAD:Lcom/google/android/gms/internal/zzow;

.field private final zzaBA:Lcom/google/android/gms/fitness/request/zzq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzae;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzae;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/StopBleScanRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "versionCode"    # I
    .param p2, "bleScanCallback"    # Landroid/os/IBinder;
    .param p3, "callback"    # Landroid/os/IBinder;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/StopBleScanRequest;->mVersionCode:I

    invoke-static {p2}, Lcom/google/android/gms/fitness/request/zzq$zza;->zzbU(Landroid/os/IBinder;)Lcom/google/android/gms/fitness/request/zzq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/StopBleScanRequest;->zzaBA:Lcom/google/android/gms/fitness/request/zzq;

    invoke-static {p3}, Lcom/google/android/gms/internal/zzow$zza;->zzbR(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzow;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/StopBleScanRequest;->zzaAD:Lcom/google/android/gms/internal/zzow;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/request/BleScanCallback;Lcom/google/android/gms/internal/zzow;)V
    .locals 1
    .param p1, "bleScanCallback"    # Lcom/google/android/gms/fitness/request/BleScanCallback;
    .param p2, "callback"    # Lcom/google/android/gms/internal/zzow;

    .prologue
    invoke-static {}, Lcom/google/android/gms/fitness/request/zza$zza;->zzuJ()Lcom/google/android/gms/fitness/request/zza$zza;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/request/zza$zza;->zzb(Lcom/google/android/gms/fitness/request/BleScanCallback;)Lcom/google/android/gms/fitness/request/zza;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/fitness/request/StopBleScanRequest;-><init>(Lcom/google/android/gms/fitness/request/zzq;Lcom/google/android/gms/internal/zzow;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/request/zzq;Lcom/google/android/gms/internal/zzow;)V
    .locals 1
    .param p1, "bleScanCallback"    # Lcom/google/android/gms/fitness/request/zzq;
    .param p2, "callback"    # Lcom/google/android/gms/internal/zzow;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/fitness/request/StopBleScanRequest;->mVersionCode:I

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/StopBleScanRequest;->zzaBA:Lcom/google/android/gms/fitness/request/zzq;

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/StopBleScanRequest;->zzaAD:Lcom/google/android/gms/internal/zzow;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCallbackBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/StopBleScanRequest;->zzaAD:Lcom/google/android/gms/internal/zzow;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/StopBleScanRequest;->zzaAD:Lcom/google/android/gms/internal/zzow;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/request/StopBleScanRequest;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/zzae;->zza(Lcom/google/android/gms/fitness/request/StopBleScanRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzvg()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/StopBleScanRequest;->zzaBA:Lcom/google/android/gms/fitness/request/zzq;

    invoke-interface {v0}, Lcom/google/android/gms/fitness/request/zzq;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
