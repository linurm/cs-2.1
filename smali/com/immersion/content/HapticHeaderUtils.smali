.class public Lcom/immersion/content/HapticHeaderUtils;
.super Lcom/immersion/content/HeaderUtils;


# static fields
.field private static final b:Ljava/lang/String; = "HapticHeaderUtils"


# instance fields
.field a:J

.field private c:[B

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/immersion/content/HeaderUtils;-><init>()V

    return-void
.end method

.method private native calculateBlockRateNative(J)I
.end method

.method private native calculateBlockSizeNative(J)I
.end method

.method private native calculateByteOffsetIntoHapticDataNative(JI)I
.end method

.method private native disposeNative(J)V
.end method

.method private native getContentIdNative(J)Ljava/lang/String;
.end method

.method private native getEncryptionNative(J)I
.end method

.method private native getMajorVersionNumberNative(J)I
.end method

.method private native getMinorVersionNumberNative(J)I
.end method

.method private native getNumChannelsNative(J)I
.end method

.method private native init([BI)J
.end method


# virtual methods
.method public calculateBlockRate()I
    .locals 2

    iget-wide v0, p0, Lcom/immersion/content/HapticHeaderUtils;->a:J

    invoke-direct {p0, v0, v1}, Lcom/immersion/content/HapticHeaderUtils;->calculateBlockRateNative(J)I

    move-result v0

    return v0
.end method

.method public calculateBlockSize()I
    .locals 2

    iget-wide v0, p0, Lcom/immersion/content/HapticHeaderUtils;->a:J

    invoke-direct {p0, v0, v1}, Lcom/immersion/content/HapticHeaderUtils;->calculateBlockSizeNative(J)I

    move-result v0

    return v0
.end method

.method public calculateByteOffsetIntoHapticData(I)I
    .locals 2

    iget-wide v0, p0, Lcom/immersion/content/HapticHeaderUtils;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/immersion/content/HapticHeaderUtils;->calculateByteOffsetIntoHapticDataNative(JI)I

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 2

    iget-wide v0, p0, Lcom/immersion/content/HapticHeaderUtils;->a:J

    invoke-direct {p0, v0, v1}, Lcom/immersion/content/HapticHeaderUtils;->disposeNative(J)V

    return-void
.end method

.method public getContentUUID()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/immersion/content/HapticHeaderUtils;->a:J

    invoke-direct {p0, v0, v1}, Lcom/immersion/content/HapticHeaderUtils;->getContentIdNative(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncryption()I
    .locals 2

    iget-wide v0, p0, Lcom/immersion/content/HapticHeaderUtils;->a:J

    invoke-direct {p0, v0, v1}, Lcom/immersion/content/HapticHeaderUtils;->getEncryptionNative(J)I

    move-result v0

    return v0
.end method

.method public getMajorVersionNumber()I
    .locals 2

    iget-wide v0, p0, Lcom/immersion/content/HapticHeaderUtils;->a:J

    invoke-direct {p0, v0, v1}, Lcom/immersion/content/HapticHeaderUtils;->getMajorVersionNumberNative(J)I

    move-result v0

    return v0
.end method

.method public getMinorVersionNumber()I
    .locals 2

    iget-wide v0, p0, Lcom/immersion/content/HapticHeaderUtils;->a:J

    invoke-direct {p0, v0, v1}, Lcom/immersion/content/HapticHeaderUtils;->getMinorVersionNumberNative(J)I

    move-result v0

    return v0
.end method

.method public getNumChannels()I
    .locals 2

    iget-wide v0, p0, Lcom/immersion/content/HapticHeaderUtils;->a:J

    invoke-direct {p0, v0, v1}, Lcom/immersion/content/HapticHeaderUtils;->getNumChannelsNative(J)I

    move-result v0

    return v0
.end method

.method public setEncryptedHSI(Ljava/nio/ByteBuffer;I)V
    .locals 3

    iput p2, p0, Lcom/immersion/content/HapticHeaderUtils;->d:I

    iget v0, p0, Lcom/immersion/content/HapticHeaderUtils;->d:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/immersion/content/HapticHeaderUtils;->c:[B

    iget-object v0, p0, Lcom/immersion/content/HapticHeaderUtils;->c:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/immersion/content/HapticHeaderUtils;->d:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/immersion/content/HapticHeaderUtils;->c:[B

    iget v1, p0, Lcom/immersion/content/HapticHeaderUtils;->d:I

    invoke-direct {p0, v0, v1}, Lcom/immersion/content/HapticHeaderUtils;->init([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/immersion/content/HapticHeaderUtils;->a:J

    return-void
.end method
