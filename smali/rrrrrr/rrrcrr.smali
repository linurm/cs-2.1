.class public final Lrrrrrr/rrrcrr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/immersion/hapticmediasdk/models/HapticFileInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "rrrcrr"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/immersion/hapticmediasdk/models/HapticFileInformation;
    .locals 1

    new-instance v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    invoke-direct {v0, p1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lrrrrrr/rrrcrr;->createFromParcel(Landroid/os/Parcel;)Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/immersion/hapticmediasdk/models/HapticFileInformation;
    .locals 1

    new-array v0, p1, [Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lrrrrrr/rrrcrr;->newArray(I)[Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    move-result-object v0

    return-object v0
.end method
