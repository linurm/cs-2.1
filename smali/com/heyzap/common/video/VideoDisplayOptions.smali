.class public Lcom/heyzap/common/video/VideoDisplayOptions;
.super Ljava/lang/Object;
.source "VideoDisplayOptions.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# instance fields
.field public allowAdTimer:Z

.field public allowClick:Z

.field public allowHide:Z

.field public allowInstallButton:Z

.field public allowSkip:Z

.field public allowStreamingFallback:Z

.field public forceStreaming:Z

.field public installButtonText:Ljava/lang/String;

.field public lockoutTime:I

.field public postRollInterstitial:Z

.field public requiredDownloadPercent:D

.field public showCountdown:Z

.field public skipLaterText:Ljava/lang/String;

.field public skipNowText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput v0, p0, Lcom/heyzap/common/video/VideoDisplayOptions;->lockoutTime:I

    .line 9
    iput-boolean v1, p0, Lcom/heyzap/common/video/VideoDisplayOptions;->allowSkip:Z

    .line 10
    iput-boolean v0, p0, Lcom/heyzap/common/video/VideoDisplayOptions;->allowHide:Z

    .line 11
    iput-boolean v0, p0, Lcom/heyzap/common/video/VideoDisplayOptions;->allowClick:Z

    .line 12
    iput-boolean v0, p0, Lcom/heyzap/common/video/VideoDisplayOptions;->allowStreamingFallback:Z

    .line 13
    iput-boolean v0, p0, Lcom/heyzap/common/video/VideoDisplayOptions;->forceStreaming:Z

    .line 14
    iput-boolean v0, p0, Lcom/heyzap/common/video/VideoDisplayOptions;->postRollInterstitial:Z

    .line 15
    iput-boolean v1, p0, Lcom/heyzap/common/video/VideoDisplayOptions;->showCountdown:Z

    .line 16
    iput-boolean v1, p0, Lcom/heyzap/common/video/VideoDisplayOptions;->allowAdTimer:Z

    .line 17
    iput-boolean v1, p0, Lcom/heyzap/common/video/VideoDisplayOptions;->allowInstallButton:Z

    .line 18
    const-string v0, "Install Now"

    iput-object v0, p0, Lcom/heyzap/common/video/VideoDisplayOptions;->installButtonText:Ljava/lang/String;

    .line 19
    const-string v0, "Skip"

    iput-object v0, p0, Lcom/heyzap/common/video/VideoDisplayOptions;->skipNowText:Ljava/lang/String;

    .line 20
    const-string v0, "Skip in %i"

    iput-object v0, p0, Lcom/heyzap/common/video/VideoDisplayOptions;->skipLaterText:Ljava/lang/String;

    .line 21
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    iput-wide v0, p0, Lcom/heyzap/common/video/VideoDisplayOptions;->requiredDownloadPercent:D

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setOptions(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 24
    const-string v0, "lockout_time"

    iget v1, p0, Lcom/heyzap/common/video/VideoDisplayOptions;->lockoutTime:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/heyzap/common/video/VideoDisplayOptions;->lockoutTime:I

    .line 25
    const-string v0, "allow_skip"

    iget-boolean v1, p0, Lcom/heyzap/common/video/VideoDisplayOptions;->allowSkip:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/heyzap/common/video/VideoDisplayOptions;->allowSkip:Z

    .line 26
    const-string v0, "allow_hide"

    iget-boolean v1, p0, Lcom/heyzap/common/video/VideoDisplayOptions;->allowHide:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/heyzap/common/video/VideoDisplayOptions;->allowHide:Z

    .line 27
    const-string v0, "allow_click"

    iget-boolean v1, p0, Lcom/heyzap/common/video/VideoDisplayOptions;->allowClick:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/heyzap/common/video/VideoDisplayOptions;->allowClick:Z

    .line 28
    const-string v0, "post_roll_interstitial"

    iget-boolean v1, p0, Lcom/heyzap/common/video/VideoDisplayOptions;->postRollInterstitial:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/heyzap/common/video/VideoDisplayOptions;->postRollInterstitial:Z

    .line 29
    const-string v0, "allow_streaming_fallback"

    iget-boolean v1, p0, Lcom/heyzap/common/video/VideoDisplayOptions;->allowStreamingFallback:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/heyzap/common/video/VideoDisplayOptions;->allowStreamingFallback:Z

    .line 30
    const-string v0, "force_streaming"

    iget-boolean v1, p0, Lcom/heyzap/common/video/VideoDisplayOptions;->forceStreaming:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/heyzap/common/video/VideoDisplayOptions;->forceStreaming:Z

    .line 31
    const-string v0, "show_countdown"

    iget-boolean v1, p0, Lcom/heyzap/common/video/VideoDisplayOptions;->showCountdown:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/heyzap/common/video/VideoDisplayOptions;->showCountdown:Z

    .line 32
    const-string v0, "required_download_percent"

    iget-wide v2, p0, Lcom/heyzap/common/video/VideoDisplayOptions;->requiredDownloadPercent:D

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/heyzap/common/video/VideoDisplayOptions;->requiredDownloadPercent:D

    .line 33
    const-string v0, "allow_ad_timer"

    iget-boolean v1, p0, Lcom/heyzap/common/video/VideoDisplayOptions;->allowAdTimer:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/heyzap/common/video/VideoDisplayOptions;->allowAdTimer:Z

    .line 34
    const-string v0, "allow_install_button"

    iget-boolean v1, p0, Lcom/heyzap/common/video/VideoDisplayOptions;->allowInstallButton:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/heyzap/common/video/VideoDisplayOptions;->allowInstallButton:Z

    .line 35
    const-string v0, "install_button_text"

    iget-object v1, p0, Lcom/heyzap/common/video/VideoDisplayOptions;->installButtonText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/common/video/VideoDisplayOptions;->installButtonText:Ljava/lang/String;

    .line 36
    const-string v0, "skip_now_text"

    iget-object v1, p0, Lcom/heyzap/common/video/VideoDisplayOptions;->skipNowText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/common/video/VideoDisplayOptions;->skipNowText:Ljava/lang/String;

    .line 37
    const-string v0, "skip_later_formatted_text"

    iget-object v1, p0, Lcom/heyzap/common/video/VideoDisplayOptions;->skipLaterText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/common/video/VideoDisplayOptions;->skipLaterText:Ljava/lang/String;

    .line 38
    return-void
.end method
