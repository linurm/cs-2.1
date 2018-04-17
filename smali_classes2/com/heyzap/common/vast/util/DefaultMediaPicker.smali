.class public Lcom/heyzap/common/vast/util/DefaultMediaPicker;
.super Ljava/lang/Object;
.source "DefaultMediaPicker.java"

# interfaces
.implements Lcom/heyzap/common/vast/processor/VASTMediaPicker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/common/vast/util/DefaultMediaPicker$1;,
        Lcom/heyzap/common/vast/util/DefaultMediaPicker$AreaComparator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultMediaPicker"

.field private static final maxPixels:I = 0x1388


# instance fields
.field SUPPORTED_VIDEO_TYPE_REGEX:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private deviceArea:I

.field private deviceHeight:I

.field private deviceWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "video/.*(?i)(mp4|3gpp|mp2t|webm|matroska)"

    iput-object v0, p0, Lcom/heyzap/common/vast/util/DefaultMediaPicker;->SUPPORTED_VIDEO_TYPE_REGEX:Ljava/lang/String;

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/heyzap/common/vast/util/DefaultMediaPicker;->setDeviceWidthHeight(II)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "video/.*(?i)(mp4|3gpp|mp2t|webm|matroska)"

    iput-object v0, p0, Lcom/heyzap/common/vast/util/DefaultMediaPicker;->SUPPORTED_VIDEO_TYPE_REGEX:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/heyzap/common/vast/util/DefaultMediaPicker;->context:Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Lcom/heyzap/common/vast/util/DefaultMediaPicker;->setDeviceWidthHeight()V

    .line 41
    return-void
.end method

.method static synthetic access$100(Lcom/heyzap/common/vast/util/DefaultMediaPicker;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/heyzap/common/vast/util/DefaultMediaPicker;->deviceArea:I

    return v0
.end method

.method private getBestMatch(Ljava/util/List;)Lcom/heyzap/common/vast/model/VASTMediaFile;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/heyzap/common/vast/model/VASTMediaFile;",
            ">;)",
            "Lcom/heyzap/common/vast/model/VASTMediaFile;"
        }
    .end annotation

    .prologue
    .line 180
    const-string v0, "DefaultMediaPicker"

    const-string v1, "getBestMatch"

    invoke-static {v0, v1}, Lcom/heyzap/common/vast/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 187
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/vast/model/VASTMediaFile;

    .line 189
    invoke-direct {p0, v0}, Lcom/heyzap/common/vast/util/DefaultMediaPicker;->isMediaFileCompatible(Lcom/heyzap/common/vast/model/VASTMediaFile;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMediaFileCompatible(Lcom/heyzap/common/vast/model/VASTMediaFile;)Z
    .locals 2

    .prologue
    .line 176
    invoke-virtual {p1}, Lcom/heyzap/common/vast/model/VASTMediaFile;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/common/vast/util/DefaultMediaPicker;->SUPPORTED_VIDEO_TYPE_REGEX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private prefilterMediaFiles(Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/heyzap/common/vast/model/VASTMediaFile;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/16 v5, 0x1388

    .line 70
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 72
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 74
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/vast/model/VASTMediaFile;

    .line 77
    invoke-virtual {v0}, Lcom/heyzap/common/vast/model/VASTMediaFile;->getType()Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    const-string v0, "DefaultMediaPicker"

    const-string v2, "Validator error: mediaFile type empty"

    invoke-static {v0, v2}, Lcom/heyzap/common/vast/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {v0}, Lcom/heyzap/common/vast/model/VASTMediaFile;->getHeight()Ljava/math/BigInteger;

    move-result-object v2

    .line 87
    if-nez v2, :cond_2

    .line 88
    const-string v0, "DefaultMediaPicker"

    const-string v2, "Validator error: mediaFile height null"

    invoke-static {v0, v2}, Lcom/heyzap/common/vast/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    .line 93
    if-lez v2, :cond_3

    if-lt v2, v5, :cond_4

    .line 94
    :cond_3
    const-string v0, "DefaultMediaPicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Validator error: mediaFile height invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/heyzap/common/vast/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 101
    :cond_4
    invoke-virtual {v0}, Lcom/heyzap/common/vast/model/VASTMediaFile;->getWidth()Ljava/math/BigInteger;

    move-result-object v2

    .line 102
    if-nez v2, :cond_5

    .line 103
    const-string v0, "DefaultMediaPicker"

    const-string v2, "Validator error: mediaFile width null"

    invoke-static {v0, v2}, Lcom/heyzap/common/vast/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 107
    :cond_5
    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    .line 108
    if-lez v2, :cond_6

    if-lt v2, v5, :cond_7

    .line 109
    :cond_6
    const-string v0, "DefaultMediaPicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Validator error: mediaFile width invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/heyzap/common/vast/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 116
    :cond_7
    invoke-virtual {v0}, Lcom/heyzap/common/vast/model/VASTMediaFile;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const-string v0, "DefaultMediaPicker"

    const-string v2, "Validator error: mediaFile url empty"

    invoke-static {v0, v2}, Lcom/heyzap/common/vast/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 124
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private setDeviceWidthHeight()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/heyzap/common/vast/util/DefaultMediaPicker;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 131
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/heyzap/common/vast/util/DefaultMediaPicker;->deviceWidth:I

    .line 132
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/heyzap/common/vast/util/DefaultMediaPicker;->deviceHeight:I

    .line 133
    iget v0, p0, Lcom/heyzap/common/vast/util/DefaultMediaPicker;->deviceWidth:I

    iget v1, p0, Lcom/heyzap/common/vast/util/DefaultMediaPicker;->deviceHeight:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/heyzap/common/vast/util/DefaultMediaPicker;->deviceArea:I

    .line 134
    return-void
.end method

.method private setDeviceWidthHeight(II)V
    .locals 2

    .prologue
    .line 138
    iput p1, p0, Lcom/heyzap/common/vast/util/DefaultMediaPicker;->deviceWidth:I

    .line 139
    iput p2, p0, Lcom/heyzap/common/vast/util/DefaultMediaPicker;->deviceHeight:I

    .line 140
    iget v0, p0, Lcom/heyzap/common/vast/util/DefaultMediaPicker;->deviceWidth:I

    iget v1, p0, Lcom/heyzap/common/vast/util/DefaultMediaPicker;->deviceHeight:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/heyzap/common/vast/util/DefaultMediaPicker;->deviceArea:I

    .line 142
    return-void
.end method


# virtual methods
.method public pickVideo(Ljava/util/List;)Lcom/heyzap/common/vast/model/VASTMediaFile;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/heyzap/common/vast/model/VASTMediaFile;",
            ">;)",
            "Lcom/heyzap/common/vast/model/VASTMediaFile;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 52
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/heyzap/common/vast/util/DefaultMediaPicker;->prefilterMediaFiles(Ljava/util/List;)I

    move-result v1

    if-nez v1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-object v0

    .line 55
    :cond_1
    new-instance v1, Lcom/heyzap/common/vast/util/DefaultMediaPicker$AreaComparator;

    invoke-direct {v1, p0, v0}, Lcom/heyzap/common/vast/util/DefaultMediaPicker$AreaComparator;-><init>(Lcom/heyzap/common/vast/util/DefaultMediaPicker;Lcom/heyzap/common/vast/util/DefaultMediaPicker$1;)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 56
    invoke-direct {p0, p1}, Lcom/heyzap/common/vast/util/DefaultMediaPicker;->getBestMatch(Ljava/util/List;)Lcom/heyzap/common/vast/model/VASTMediaFile;

    move-result-object v0

    goto :goto_0
.end method
