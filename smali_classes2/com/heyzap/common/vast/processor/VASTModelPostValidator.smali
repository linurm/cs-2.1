.class public Lcom/heyzap/common/vast/processor/VASTModelPostValidator;
.super Ljava/lang/Object;
.source "VASTModelPostValidator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VASTModelPostValidator"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static validate(Lcom/heyzap/common/vast/model/VASTModel;Lcom/heyzap/common/vast/processor/VASTMediaPicker;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 32
    const-string v1, "VASTModelPostValidator"

    const-string v2, "validate"

    invoke-static {v1, v2}, Lcom/heyzap/common/vast/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-static {p0}, Lcom/heyzap/common/vast/processor/VASTModelPostValidator;->validateModel(Lcom/heyzap/common/vast/model/VASTModel;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 35
    const-string v1, "VASTModelPostValidator"

    const-string v2, "Validator returns: not valid (invalid model)"

    invoke-static {v1, v2}, Lcom/heyzap/common/vast/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :goto_0
    return v0

    .line 43
    :cond_0
    if-eqz p1, :cond_2

    .line 44
    invoke-virtual {p0}, Lcom/heyzap/common/vast/model/VASTModel;->getMediaFiles()Ljava/util/List;

    move-result-object v1

    .line 45
    invoke-interface {p1, v1}, Lcom/heyzap/common/vast/processor/VASTMediaPicker;->pickVideo(Ljava/util/List;)Lcom/heyzap/common/vast/model/VASTMediaFile;

    move-result-object v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    invoke-virtual {v1}, Lcom/heyzap/common/vast/model/VASTMediaFile;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 50
    const/4 v0, 0x1

    .line 53
    invoke-virtual {p0, v1}, Lcom/heyzap/common/vast/model/VASTModel;->setPickedMediaFile(Lcom/heyzap/common/vast/model/VASTMediaFile;)V

    .line 54
    const-string v1, "VASTModelPostValidator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mediaPicker selected mediaFile with URL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/heyzap/common/vast/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_1
    :goto_1
    const-string v2, "VASTModelPostValidator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Validator returns: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_3

    const-string v1, "valid"

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/heyzap/common/vast/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_2
    const-string v1, "VASTModelPostValidator"

    const-string v2, "mediaPicker: We don\'t have a compatible media file to play."

    invoke-static {v1, v2}, Lcom/heyzap/common/vast/util/VASTLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 63
    :cond_3
    const-string v1, "not valid (no media file)"

    goto :goto_2
.end method

.method private static validateModel(Lcom/heyzap/common/vast/model/VASTModel;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 69
    const-string v0, "VASTModelPostValidator"

    const-string v2, "validateModel"

    invoke-static {v0, v2}, Lcom/heyzap/common/vast/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x1

    .line 73
    invoke-virtual {p0}, Lcom/heyzap/common/vast/model/VASTModel;->getImpressions()Ljava/util/List;

    move-result-object v2

    .line 74
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 79
    :cond_1
    invoke-virtual {p0}, Lcom/heyzap/common/vast/model/VASTModel;->getMediaFiles()Ljava/util/List;

    move-result-object v2

    .line 80
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 81
    :cond_2
    const-string v0, "VASTModelPostValidator"

    const-string v2, "Validator error: mediaFile list invalid"

    invoke-static {v0, v2}, Lcom/heyzap/common/vast/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 85
    :cond_3
    return v0
.end method
