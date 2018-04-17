.class public Lcom/immersion/hapticmediasdk/models/HapticFileInformation;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:[I

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lrrrrrr/rrrcrr;

    invoke-direct {v0}, Lrrrrrr/rrrcrr;-><init>()V

    sput-object v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->c:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->d:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->f:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->g:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->h:I

    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->h:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->i:[I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->h:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->i:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->j:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->k:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->l:I

    return-void
.end method

.method private constructor <init>(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bЧЧЧ0427Ч0427(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b0427ЧЧ0427Ч0427(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;)I

    move-result v0

    iput v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b:I

    invoke-static {p1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bЧ0427Ч0427Ч0427(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;)I

    move-result v0

    iput v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->c:I

    invoke-static {p1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b04270427Ч0427Ч0427(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;)I

    move-result v0

    iput v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->d:I

    invoke-static {p1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bЧЧ04270427Ч0427(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;)I

    move-result v0

    iput v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->e:I

    invoke-static {p1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b0427Ч04270427Ч0427(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;)I

    move-result v0

    iput v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->f:I

    invoke-static {p1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bЧ042704270427Ч0427(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;)I

    move-result v0

    iput v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->g:I

    invoke-static {p1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b0427042704270427Ч0427(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;)I

    move-result v0

    iput v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->h:I

    invoke-static {p1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bЧЧЧЧ04270427(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->i:[I

    invoke-static {p1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b0427ЧЧЧ04270427(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;)I

    move-result v0

    iput v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->j:I

    invoke-static {p1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->bЧ0427ЧЧ04270427(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;)I

    move-result v0

    iput v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->k:I

    invoke-static {p1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b04270427ЧЧ04270427(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;)I

    move-result v0

    iput v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->l:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;Lrrrrrr/rrrcrr;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;-><init>(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getActuatorArray()[I
    .locals 1

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->i:[I

    return-object v0
.end method

.method public getBitsPerSample()I
    .locals 1

    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->g:I

    return v0
.end method

.method public getCompressionScheme()I
    .locals 1

    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->j:I

    return v0
.end method

.method public getEncoding()I
    .locals 1

    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->e:I

    return v0
.end method

.method public getFileLength()I
    .locals 1

    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b:I

    return v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getHapticDataLength()I
    .locals 1

    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->k:I

    return v0
.end method

.method public getHapticDataStartByteOffset()I
    .locals 1

    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->l:I

    return v0
.end method

.method public getMajorVersion()I
    .locals 1

    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->c:I

    return v0
.end method

.method public getMinorVersion()I
    .locals 1

    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->d:I

    return v0
.end method

.method public getNumberOfChannels()I
    .locals 1

    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->h:I

    return v0
.end method

.method public getSampleHertz()I
    .locals 1

    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->f:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->h:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->i:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->j:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->k:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->l:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
