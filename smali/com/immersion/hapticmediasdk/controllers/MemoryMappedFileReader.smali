.class public Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/immersion/hapticmediasdk/controllers/IHapticFileReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrrrrrr/cccrrr;,
        Lrrrrrr/ccrrrr;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "MemoryMappedFileReader"

.field private static g:I = 0x0

.field private static h:I = 0x0

.field private static final j:I = 0x1000

.field private static final k:I = 0x3000


# instance fields
.field private b:Ljava/io/File;

.field private c:Ljava/nio/channels/FileChannel;

.field private d:Lrrrrrr/ccrrrr;

.field private e:Lrrrrrr/ccrrrr;

.field private f:I

.field private i:Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

.field private l:Ljava/lang/String;

.field private final m:Lcom/immersion/hapticmediasdk/utils/Profiler;

.field private n:Lcom/immersion/hapticmediasdk/utils/FileManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x28

    sput v0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->g:I

    const/4 v0, 0x0

    sput v0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->h:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/immersion/hapticmediasdk/utils/FileManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/immersion/hapticmediasdk/utils/Profiler;

    invoke-direct {v0}, Lcom/immersion/hapticmediasdk/utils/Profiler;-><init>()V

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->m:Lcom/immersion/hapticmediasdk/utils/Profiler;

    iput-object p1, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->l:Ljava/lang/String;

    iput-object p2, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->n:Lcom/immersion/hapticmediasdk/utils/FileManager;

    return-void
.end method

.method private a(Lrrrrrr/ccrrrr;I)I
    .locals 2

    iget v0, p1, Lrrrrrr/ccrrrr;->mHapticDataOffset:I

    sub-int v0, p2, v0

    iget-object v1, p1, Lrrrrrr/ccrrrr;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->capacity()I

    move-result v1

    rem-int/2addr v0, v1

    return v0
.end method

.method private a()Z
    .locals 5

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->i:Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x3000

    invoke-direct {p0, v1}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b:Ljava/io/File;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->n:Lcom/immersion/hapticmediasdk/utils/FileManager;

    iget-object v3, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->l:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/immersion/hapticmediasdk/utils/FileManager;->getHapticStorageFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b:Ljava/io/File;

    :cond_2
    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->c:Ljava/nio/channels/FileChannel;

    if-nez v1, :cond_3

    new-instance v3, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b:Ljava/io/File;

    const-string v4, "r"

    invoke-direct {v3, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    iput-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->c:Ljava/nio/channels/FileChannel;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->c:Ljava/nio/channels/FileChannel;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b()Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    const-string v3, "MemoryMappedFileReader"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/immersion/hapticmediasdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->n:Lcom/immersion/hapticmediasdk/utils/FileManager;

    invoke-virtual {v1, v2}, Lcom/immersion/hapticmediasdk/utils/FileManager;->closeCloseable(Ljava/io/Closeable;)V

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->n:Lcom/immersion/hapticmediasdk/utils/FileManager;

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->c:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1, v2}, Lcom/immersion/hapticmediasdk/utils/FileManager;->closeCloseable(Ljava/io/Closeable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    move-object v2, v3

    goto :goto_1
.end method

.method private a(I)Z
    .locals 1

    iget v0, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->f:I

    if-lt v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(I)I
    .locals 5

    const/16 v0, 0x3e8

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->i:Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    invoke-virtual {v1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->getSampleHertz()I

    move-result v1

    div-int/2addr v0, v1

    div-int v1, p1, v0

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->i:Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->getBitsPerSample()I

    move-result v0

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->i:Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    invoke-virtual {v2}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->getNumberOfChannels()I

    move-result v2

    mul-int v3, v0, v2

    int-to-float v3, v3

    const/high16 v4, 0x41000000    # 8.0f

    div-float/2addr v3, v4

    mul-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x8

    int-to-float v2, v0

    float-to-int v0, v2

    cmpl-float v2, v3, v2

    if-lez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    mul-int/2addr v0, v1

    return v0
.end method

.method private b()Z
    .locals 7

    const/4 v3, 0x4

    const/4 v0, 0x0

    const/4 v1, 0x4

    :try_start_0
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->c:Ljava/nio/channels/FileChannel;

    const-wide/16 v4, 0x10

    invoke-virtual {v2, v1, v4, v5}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v2

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    add-int/lit8 v1, v1, 0x1c

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->c:Ljava/nio/channels/FileChannel;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v2, v4, v5}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v3

    if-ne v3, v1, :cond_0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    new-instance v3, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;

    invoke-direct {v3}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;-><init>()V

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->setFilePath(Ljava/lang/String;)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;

    const/4 v1, 0x4

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v3, v1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->setTotalFileLength(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;

    const/16 v1, 0x14

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {v3, v1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->setMajorVersion(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {v3, v1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->setMinorVersion(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {v3, v1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->setEncoding(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;

    const/16 v1, 0x18

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->setSampleHertz(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v1, v4

    invoke-virtual {v3, v1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->setBitsPerSample(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    invoke-virtual {v3, v4}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->setNumberOfChannels(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;

    new-array v5, v4, [I

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    aput v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3, v5}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->setActuatorArray([I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {v3, v1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->setCompressionScheme(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->setHapticDataLength(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->setHapticDataStartByteOffset(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;

    invoke-virtual {v3}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->build()Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    move-result-object v1

    iput-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->i:Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    sget v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->g:I

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->i:Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    invoke-virtual {v2}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->getSampleHertz()I

    move-result v2

    mul-int/2addr v1, v2

    div-int/lit16 v1, v1, 0x3e8

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->i:Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    invoke-virtual {v2}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->getBitsPerSample()I

    move-result v2

    mul-int/2addr v1, v2

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->i:Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    invoke-virtual {v2}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->getNumberOfChannels()I

    move-result v2

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x8

    sput v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->h:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private static b(Lrrrrrr/ccrrrr;I)Z
    .locals 1

    iget v0, p0, Lrrrrrr/ccrrrr;->mHapticDataOffset:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(I)I
    .locals 2

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->i:Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->getHapticDataStartByteOffset()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/immersion/hapticmediasdk/models/NotEnoughHapticBytesAvailableException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->e:Lrrrrrr/ccrrrr;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->e:Lrrrrrr/ccrrrr;

    iget v0, v0, Lrrrrrr/ccrrrr;->mHapticDataOffset:I

    add-int/lit16 v0, v0, 0x1000

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->e:Lrrrrrr/ccrrrr;

    iput-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->d:Lrrrrrr/ccrrrr;

    invoke-direct {p0, v0}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->d(I)Lrrrrrr/ccrrrr;

    move-result-object v0

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->e:Lrrrrrr/ccrrrr;

    goto :goto_0
.end method

.method private static c(Lrrrrrr/ccrrrr;I)Z
    .locals 2

    iget v0, p0, Lrrrrrr/ccrrrr;->mHapticDataOffset:I

    iget-object v1, p0, Lrrrrrr/ccrrrr;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->capacity()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(I)Lrrrrrr/ccrrrr;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/immersion/hapticmediasdk/models/NotEnoughHapticBytesAvailableException;
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->m:Lcom/immersion/hapticmediasdk/utils/Profiler;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/utils/Profiler;->startTiming()V

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->i:Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->getHapticDataLength()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->i:Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->getHapticDataStartByteOffset()I

    move-result v0

    add-int v2, v0, p1

    add-int/lit16 v0, p1, 0x1000

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->i:Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    invoke-virtual {v1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->getHapticDataLength()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/16 v0, 0x1000

    move v4, v0

    :goto_0
    add-int v0, p1, v4

    iget v1, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->f:I

    if-le v0, v1, :cond_1

    new-instance v0, Lcom/immersion/hapticmediasdk/models/NotEnoughHapticBytesAvailableException;

    const-string v1, "Not enough bytes available yet."

    invoke-direct {v0, v1}, Lcom/immersion/hapticmediasdk/models/NotEnoughHapticBytesAvailableException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->i:Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->getHapticDataLength()I

    move-result v0

    sub-int/2addr v0, p1

    move v4, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->c:Ljava/nio/channels/FileChannel;

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    int-to-long v2, v2

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v0}, Ljava/nio/MappedByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    new-instance v0, Lrrrrrr/ccrrrr;

    invoke-direct {v0, v6}, Lrrrrrr/ccrrrr;-><init>(Lrrrrrr/cccrrr;)V

    iput-object v1, v0, Lrrrrrr/ccrrrr;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    iput p1, v0, Lrrrrrr/ccrrrr;->mHapticDataOffset:I

    :goto_1
    return-object v0

    :cond_2
    move-object v0, v6

    goto :goto_1
.end method

.method private d()V
    .locals 4

    const-string v0, "MemoryMappedFileReader"

    const-string v1, "%%%%%%%%%%% logBufferState %%%%%%%%%%%"

    invoke-static {v0, v1}, Lcom/immersion/hapticmediasdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->d:Lrrrrrr/ccrrrr;

    if-eqz v0, :cond_0

    const-string v0, "MemoryMappedFileReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentMMW capacity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->d:Lrrrrrr/ccrrrr;

    iget-object v2, v2, Lrrrrrr/ccrrrr;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v2}, Ljava/nio/MappedByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/immersion/hapticmediasdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MemoryMappedFileReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentMMW position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->d:Lrrrrrr/ccrrrr;

    iget-object v2, v2, Lrrrrrr/ccrrrr;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v2}, Ljava/nio/MappedByteBuffer;->position()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/immersion/hapticmediasdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MemoryMappedFileReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentMMW remaining = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->d:Lrrrrrr/ccrrrr;

    iget-object v2, v2, Lrrrrrr/ccrrrr;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v2}, Ljava/nio/MappedByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/immersion/hapticmediasdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MemoryMappedFileReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentMMW mHapticDataOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->d:Lrrrrrr/ccrrrr;

    iget v2, v2, Lrrrrrr/ccrrrr;->mHapticDataOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/immersion/hapticmediasdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MemoryMappedFileReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentMMW mHapticDataOffset + position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->d:Lrrrrrr/ccrrrr;

    iget v2, v2, Lrrrrrr/ccrrrr;->mHapticDataOffset:I

    iget-object v3, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->d:Lrrrrrr/ccrrrr;

    iget-object v3, v3, Lrrrrrr/ccrrrr;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v3}, Ljava/nio/MappedByteBuffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/immersion/hapticmediasdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v0, "MemoryMappedFileReader"

    const-string v1, "--------------------------------------"

    invoke-static {v0, v1}, Lcom/immersion/hapticmediasdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->e:Lrrrrrr/ccrrrr;

    if-eqz v0, :cond_1

    const-string v0, "MemoryMappedFileReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNextMMW capacity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->e:Lrrrrrr/ccrrrr;

    iget-object v2, v2, Lrrrrrr/ccrrrr;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v2}, Ljava/nio/MappedByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/immersion/hapticmediasdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MemoryMappedFileReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNextMMW position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->e:Lrrrrrr/ccrrrr;

    iget-object v2, v2, Lrrrrrr/ccrrrr;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v2}, Ljava/nio/MappedByteBuffer;->position()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/immersion/hapticmediasdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MemoryMappedFileReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNextMMW remaining = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->e:Lrrrrrr/ccrrrr;

    iget-object v2, v2, Lrrrrrr/ccrrrr;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v2}, Ljava/nio/MappedByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/immersion/hapticmediasdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MemoryMappedFileReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNextMMW mHapticDataOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->e:Lrrrrrr/ccrrrr;

    iget v2, v2, Lrrrrrr/ccrrrr;->mHapticDataOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/immersion/hapticmediasdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MemoryMappedFileReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNextMMW mHapticDataOffset + position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->e:Lrrrrrr/ccrrrr;

    iget v2, v2, Lrrrrrr/ccrrrr;->mHapticDataOffset:I

    iget-object v3, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->e:Lrrrrrr/ccrrrr;

    iget-object v3, v3, Lrrrrrr/ccrrrr;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v3}, Ljava/nio/MappedByteBuffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/immersion/hapticmediasdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string v0, "MemoryMappedFileReader"

    const-string v1, "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"

    invoke-static {v0, v1}, Lcom/immersion/hapticmediasdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "MemoryMappedFileReader"

    const-string v1, "mCurrentMMW is null"

    invoke-static {v0, v1}, Lcom/immersion/hapticmediasdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "MemoryMappedFileReader"

    const-string v1, "mNextMMW is null"

    invoke-static {v0, v1}, Lcom/immersion/hapticmediasdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static d(Lrrrrrr/ccrrrr;I)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b(Lrrrrrr/ccrrrr;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->c(Lrrrrrr/ccrrrr;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e(Lrrrrrr/ccrrrr;I)Z
    .locals 1

    sget v0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->h:I

    add-int/2addr v0, p1

    invoke-static {p0, v0}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->c(Lrrrrrr/ccrrrr;I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public bufferAtPlaybackPosition(I)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->a()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->b(I)I

    move-result v2

    iget-object v3, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->d:Lrrrrrr/ccrrrr;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->d:Lrrrrrr/ccrrrr;

    invoke-static {v3, v2}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->d(Lrrrrrr/ccrrrr;I)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->e:Lrrrrrr/ccrrrr;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->e:Lrrrrrr/ccrrrr;

    invoke-static {v3, v2}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->d(Lrrrrrr/ccrrrr;I)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->e:Lrrrrrr/ccrrrr;

    invoke-static {v3, v2}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->e(Lrrrrrr/ccrrrr;I)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_2
    iget-object v3, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->d:Lrrrrrr/ccrrrr;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->d:Lrrrrrr/ccrrrr;

    iget v3, v3, Lrrrrrr/ccrrrr;->mHapticDataOffset:I

    if-eq v3, v2, :cond_4

    :cond_3
    invoke-direct {p0, v2}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->d(I)Lrrrrrr/ccrrrr;

    move-result-object v3

    iput-object v3, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->d:Lrrrrrr/ccrrrr;

    :cond_4
    iget-object v3, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->e:Lrrrrrr/ccrrrr;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->e:Lrrrrrr/ccrrrr;

    iget v3, v3, Lrrrrrr/ccrrrr;->mHapticDataOffset:I

    add-int/lit16 v4, v2, 0x1000

    if-eq v3, v4, :cond_6

    :cond_5
    add-int/lit16 v2, v2, 0x1000

    invoke-direct {p0, v2}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->d(I)Lrrrrrr/ccrrrr;

    move-result-object v2

    iput-object v2, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->e:Lrrrrrr/ccrrrr;

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->c()V
    :try_end_0
    .catch Lcom/immersion/hapticmediasdk/models/NotEnoughHapticBytesAvailableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_8
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->d:Lrrrrrr/ccrrrr;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->d:Lrrrrrr/ccrrrr;

    iget-object v0, v0, Lrrrrrr/ccrrrr;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    iget-object v3, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->d:Lrrrrrr/ccrrrr;

    invoke-direct {p0, v3, v2}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->a(Lrrrrrr/ccrrrr;I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_9
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MemoryMappedFileReader"

    invoke-virtual {v1}, Lcom/immersion/hapticmediasdk/models/NotEnoughHapticBytesAvailableException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/immersion/hapticmediasdk/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->n:Lcom/immersion/hapticmediasdk/utils/FileManager;

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->c:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, v1}, Lcom/immersion/hapticmediasdk/utils/FileManager;->closeCloseable(Ljava/io/Closeable;)V

    return-void
.end method

.method public getBlockOffset(J)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getBlockSizeMS()I
    .locals 1

    sget v0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->g:I

    return v0
.end method

.method public getBufferForPlaybackPosition(I)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/immersion/hapticmediasdk/models/NotEnoughHapticBytesAvailableException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->d:Lrrrrrr/ccrrrr;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->d:Lrrrrrr/ccrrrr;

    iget v1, v1, Lrrrrrr/ccrrrr;->mHapticDataOffset:I

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->d:Lrrrrrr/ccrrrr;

    iget-object v2, v2, Lrrrrrr/ccrrrr;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v2}, Ljava/nio/MappedByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->i:Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    invoke-virtual {v2}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->getHapticDataLength()I

    move-result v2

    if-ge v1, v2, :cond_0

    :try_start_0
    sget v1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->h:I

    new-array v1, v1, [B

    sget v2, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->h:I

    iget-object v3, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->d:Lrrrrrr/ccrrrr;

    iget-object v3, v3, Lrrrrrr/ccrrrr;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v3}, Ljava/nio/MappedByteBuffer;->remaining()I

    move-result v3

    if-lt v2, v3, :cond_4

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->d:Lrrrrrr/ccrrrr;

    iget-object v2, v2, Lrrrrrr/ccrrrr;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v2}, Ljava/nio/MappedByteBuffer;->remaining()I

    move-result v3

    sget v2, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->h:I

    sub-int/2addr v2, v3

    iget-object v4, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->d:Lrrrrrr/ccrrrr;

    iget-object v4, v4, Lrrrrrr/ccrrrr;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5, v3}, Ljava/nio/MappedByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    if-lez v2, :cond_2

    iget-object v4, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->e:Lrrrrrr/ccrrrr;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->e:Lrrrrrr/ccrrrr;

    iget-object v4, v4, Lrrrrrr/ccrrrr;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v4}, Ljava/nio/MappedByteBuffer;->remaining()I

    move-result v4

    if-lt v4, v2, :cond_3

    :goto_1
    iget-object v4, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->e:Lrrrrrr/ccrrrr;

    iget-object v4, v4, Lrrrrrr/ccrrrr;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v4, v1, v3, v2}, Ljava/nio/MappedByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :cond_2
    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->c()V

    :goto_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->e:Lrrrrrr/ccrrrr;

    iget-object v2, v2, Lrrrrrr/ccrrrr;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v2}, Ljava/nio/MappedByteBuffer;->remaining()I

    move-result v2

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->d:Lrrrrrr/ccrrrr;

    iget-object v2, v2, Lrrrrrr/ccrrrr;->mMappedByteBuffer:Ljava/nio/MappedByteBuffer;

    const/4 v3, 0x0

    sget v4, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->h:I

    invoke-virtual {v2, v1, v3, v4}, Ljava/nio/MappedByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getEncryptedHapticHeader()[B
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public getHapticBlockIndex(J)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHapticFileInformation()Lcom/immersion/hapticmediasdk/models/HapticFileInformation;
    .locals 1

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->i:Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    return-object v0
.end method

.method public setBlockSizeMS(I)V
    .locals 0

    sput p1, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->g:I

    return-void
.end method

.method public setBytesAvailable(I)V
    .locals 0

    iput p1, p0, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->f:I

    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/controllers/MemoryMappedFileReader;->a()Z

    return-void
.end method
