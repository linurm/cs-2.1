.class public Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/immersion/hapticmediasdk/models/HapticFileInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


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
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b0427042704270427Ч0427(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;)I
    .locals 1

    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->h:I

    return v0
.end method

.method public static synthetic b04270427Ч0427Ч0427(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;)I
    .locals 1

    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->d:I

    return v0
.end method

.method public static synthetic b04270427ЧЧ04270427(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;)I
    .locals 1

    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->l:I

    return v0
.end method

.method public static synthetic b0427Ч04270427Ч0427(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;)I
    .locals 1

    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->f:I

    return v0
.end method

.method public static synthetic b0427ЧЧ0427Ч0427(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;)I
    .locals 1

    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b:I

    return v0
.end method

.method public static synthetic b0427ЧЧЧ04270427(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;)I
    .locals 1

    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->j:I

    return v0
.end method

.method public static synthetic bЧ042704270427Ч0427(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;)I
    .locals 1

    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->g:I

    return v0
.end method

.method public static synthetic bЧ0427Ч0427Ч0427(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;)I
    .locals 1

    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->c:I

    return v0
.end method

.method public static synthetic bЧ0427ЧЧ04270427(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;)I
    .locals 1

    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->k:I

    return v0
.end method

.method public static synthetic bЧЧ04270427Ч0427(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;)I
    .locals 1

    iget v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->e:I

    return v0
.end method

.method public static synthetic bЧЧЧ0427Ч0427(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic bЧЧЧЧ04270427(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;)[I
    .locals 1

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->i:[I

    return-object v0
.end method


# virtual methods
.method public build()Lcom/immersion/hapticmediasdk/models/HapticFileInformation;
    .locals 2

    new-instance v0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;-><init>(Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;Lrrrrrr/rrrcrr;)V

    return-object v0
.end method

.method public setActuatorArray([I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;
    .locals 0

    iput-object p1, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->i:[I

    return-object p0
.end method

.method public setBitsPerSample(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;
    .locals 0

    iput p1, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->g:I

    return-object p0
.end method

.method public setCompressionScheme(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;
    .locals 0

    iput p1, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->j:I

    return-object p0
.end method

.method public setEncoding(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;
    .locals 0

    iput p1, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->e:I

    return-object p0
.end method

.method public setFilePath(Ljava/lang/String;)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;
    .locals 0

    iput-object p1, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method public setHapticDataLength(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;
    .locals 0

    iput p1, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->k:I

    return-object p0
.end method

.method public setHapticDataStartByteOffset(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;
    .locals 0

    iput p1, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->l:I

    return-object p0
.end method

.method public setMajorVersion(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;
    .locals 0

    iput p1, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->c:I

    return-object p0
.end method

.method public setMinorVersion(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;
    .locals 0

    iput p1, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->d:I

    return-object p0
.end method

.method public setNumberOfChannels(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;
    .locals 0

    iput p1, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->h:I

    return-object p0
.end method

.method public setSampleHertz(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;
    .locals 0

    iput p1, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->f:I

    return-object p0
.end method

.method public setTotalFileLength(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;
    .locals 0

    iput p1, p0, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$Builder;->b:I

    return-object p0
.end method
