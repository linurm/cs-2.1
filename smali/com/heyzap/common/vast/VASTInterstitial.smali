.class public Lcom/heyzap/common/vast/VASTInterstitial;
.super Ljava/lang/Object;
.source "VASTInterstitial.java"

# interfaces
.implements Lcom/heyzap/exchange/ExchangeInterstitialInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/common/vast/VASTInterstitial$VASTPlayerListener;
    }
.end annotation


# static fields
.field public static final ERROR_EXCEEDED_WRAPPER_LIMIT:I = 0x6

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_NO_NETWORK:I = 0x1

.field public static final ERROR_POST_VALIDATION:I = 0x5

.field public static final ERROR_SCHEMA_VALIDATION:I = 0x4

.field public static final ERROR_VIDEO_PLAYBACK:I = 0x7

.field public static final ERROR_XML_OPEN_OR_READ:I = 0x2

.field public static final ERROR_XML_PARSE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "VASTPlayer"

.field public static final VERSION:Ljava/lang/String; = "1.3"

.field public static listener:Lcom/heyzap/common/vast/VASTInterstitial$VASTPlayerListener;


# instance fields
.field private context:Landroid/content/Context;

.field private vastModel:Lcom/heyzap/common/vast/model/VASTModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/heyzap/common/vast/VASTInterstitial$VASTPlayerListener;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/heyzap/common/vast/VASTInterstitial;->context:Landroid/content/Context;

    .line 75
    sput-object p2, Lcom/heyzap/common/vast/VASTInterstitial;->listener:Lcom/heyzap/common/vast/VASTInterstitial$VASTPlayerListener;

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/common/vast/VASTInterstitial$VASTPlayerListener;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1, p3}, Lcom/heyzap/common/vast/VASTInterstitial;-><init>(Landroid/content/Context;Lcom/heyzap/common/vast/VASTInterstitial$VASTPlayerListener;)V

    .line 70
    invoke-virtual {p0, p2}, Lcom/heyzap/common/vast/VASTInterstitial;->loadVideoWithData(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/heyzap/common/vast/VASTInterstitial;I)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/heyzap/common/vast/VASTInterstitial;->sendError(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/heyzap/common/vast/VASTInterstitial;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/heyzap/common/vast/VASTInterstitial;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/heyzap/common/vast/VASTInterstitial;)Lcom/heyzap/common/vast/model/VASTModel;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/heyzap/common/vast/VASTInterstitial;->vastModel:Lcom/heyzap/common/vast/model/VASTModel;

    return-object v0
.end method

.method static synthetic access$202(Lcom/heyzap/common/vast/VASTInterstitial;Lcom/heyzap/common/vast/model/VASTModel;)Lcom/heyzap/common/vast/model/VASTModel;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/heyzap/common/vast/VASTInterstitial;->vastModel:Lcom/heyzap/common/vast/model/VASTModel;

    return-object p1
.end method

.method static synthetic access$300(Lcom/heyzap/common/vast/VASTInterstitial;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/heyzap/common/vast/VASTInterstitial;->sendReady()V

    return-void
.end method

.method private sendError(I)V
    .locals 2

    .prologue
    .line 187
    const-string v0, "VASTPlayer"

    const-string v1, "sendError"

    invoke-static {v0, v1}, Lcom/heyzap/common/vast/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    sget-object v0, Lcom/heyzap/common/vast/VASTInterstitial;->listener:Lcom/heyzap/common/vast/VASTInterstitial$VASTPlayerListener;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/heyzap/common/vast/VASTInterstitial;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/heyzap/common/vast/VASTInterstitial$4;

    invoke-direct {v1, p0, p1}, Lcom/heyzap/common/vast/VASTInterstitial$4;-><init>(Lcom/heyzap/common/vast/VASTInterstitial;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 196
    :cond_0
    return-void
.end method

.method private sendReady()V
    .locals 2

    .prologue
    .line 175
    const-string v0, "VASTPlayer"

    const-string v1, "sendReady"

    invoke-static {v0, v1}, Lcom/heyzap/common/vast/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    sget-object v0, Lcom/heyzap/common/vast/VASTInterstitial;->listener:Lcom/heyzap/common/vast/VASTInterstitial$VASTPlayerListener;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/heyzap/common/vast/VASTInterstitial;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/heyzap/common/vast/VASTInterstitial$3;

    invoke-direct {v1, p0}, Lcom/heyzap/common/vast/VASTInterstitial$3;-><init>(Lcom/heyzap/common/vast/VASTInterstitial;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 184
    :cond_0
    return-void
.end method


# virtual methods
.method public close()Z
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public load()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 172
    return-void
.end method

.method public loadVideoWithData(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 119
    const-string v0, "VASTPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadVideoWithData\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heyzap/common/vast/util/VASTLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heyzap/common/vast/VASTInterstitial;->vastModel:Lcom/heyzap/common/vast/model/VASTModel;

    .line 121
    iget-object v0, p0, Lcom/heyzap/common/vast/VASTInterstitial;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/heyzap/common/net/Connectivity;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/heyzap/common/vast/VASTInterstitial$2;

    invoke-direct {v1, p0, p1}, Lcom/heyzap/common/vast/VASTInterstitial$2;-><init>(Lcom/heyzap/common/vast/VASTInterstitial;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/heyzap/common/vast/VASTInterstitial;->sendError(I)V

    goto :goto_0
.end method

.method public loadVideoWithUrl(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 79
    const-string v0, "VASTPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadVideoWithUrl "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heyzap/common/vast/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heyzap/common/vast/VASTInterstitial;->vastModel:Lcom/heyzap/common/vast/model/VASTModel;

    .line 81
    iget-object v0, p0, Lcom/heyzap/common/vast/VASTInterstitial;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/heyzap/common/net/Connectivity;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/heyzap/common/vast/VASTInterstitial$1;

    invoke-direct {v1, p0, p1}, Lcom/heyzap/common/vast/VASTInterstitial$1;-><init>(Lcom/heyzap/common/vast/VASTInterstitial;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/heyzap/common/vast/VASTInterstitial;->sendError(I)V

    goto :goto_0
.end method

.method public show(Landroid/app/Activity;Lcom/heyzap/internal/Constants$AdUnit;)V
    .locals 3

    .prologue
    .line 154
    const-string v0, "VASTPlayer"

    const-string v1, "play"

    invoke-static {v0, v1}, Lcom/heyzap/common/vast/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/heyzap/common/vast/VASTInterstitial;->vastModel:Lcom/heyzap/common/vast/model/VASTModel;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/heyzap/common/vast/VASTInterstitial;->vastModel:Lcom/heyzap/common/vast/model/VASTModel;

    invoke-virtual {v0, p2}, Lcom/heyzap/common/vast/model/VASTModel;->setAdUnit(Lcom/heyzap/internal/Constants$AdUnit;)V

    .line 157
    invoke-static {p1}, Lcom/heyzap/common/net/Connectivity;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/heyzap/sdk/ads/VASTActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 159
    const-string v1, "com.heyzap.vast.VASTModel"

    iget-object v2, p0, Lcom/heyzap/common/vast/VASTInterstitial;->vastModel:Lcom/heyzap/common/vast/model/VASTModel;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 160
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 167
    :goto_0
    return-void

    .line 162
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/heyzap/common/vast/VASTInterstitial;->sendError(I)V

    goto :goto_0

    .line 165
    :cond_1
    const-string v0, "VASTPlayer"

    const-string v1, "vastModel is null; nothing to play"

    invoke-static {v0, v1}, Lcom/heyzap/common/vast/util/VASTLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
