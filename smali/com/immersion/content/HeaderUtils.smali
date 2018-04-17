.class public abstract Lcom/immersion/content/HeaderUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract calculateBlockRate()I
.end method

.method public abstract calculateBlockSize()I
.end method

.method public abstract calculateByteOffsetIntoHapticData(I)I
.end method

.method public abstract dispose()V
.end method

.method public abstract getContentUUID()Ljava/lang/String;
.end method

.method public abstract getEncryption()I
.end method

.method public abstract getMajorVersionNumber()I
.end method

.method public abstract getMinorVersionNumber()I
.end method

.method public abstract getNumChannels()I
.end method

.method public abstract setEncryptedHSI(Ljava/nio/ByteBuffer;I)V
.end method
