.class LHeyzap$1;
.super Ljava/lang/Object;
.source "Heyzap.java"

# interfaces
.implements Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LHeyzap;->HeyzapStart(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LHeyzap;


# direct methods
.method constructor <init>(LHeyzap;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, LHeyzap$1;->this$0:LHeyzap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFinished()V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, LHeyzap$1;->this$0:LHeyzap;

    sget-object v1, LHeyzap$HeyzapCallback;->HZINTERSTITIAL_AUDIO_FINISHED:LHeyzap$HeyzapCallback;

    invoke-virtual {v1}, LHeyzap$HeyzapCallback;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LHeyzap;->nativeCallback(ILjava/lang/String;)V

    .line 88
    return-void
.end method

.method public onAudioStarted()V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, LHeyzap$1;->this$0:LHeyzap;

    sget-object v1, LHeyzap$HeyzapCallback;->HZINTERSTITIAL_AUDIO_STARTED:LHeyzap$HeyzapCallback;

    invoke-virtual {v1}, LHeyzap$HeyzapCallback;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LHeyzap;->nativeCallback(ILjava/lang/String;)V

    .line 83
    return-void
.end method

.method public onAvailable(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, LHeyzap$1;->this$0:LHeyzap;

    sget-object v1, LHeyzap$HeyzapCallback;->HZINTERSTITIAL_AVAILABLE:LHeyzap$HeyzapCallback;

    invoke-virtual {v1}, LHeyzap$HeyzapCallback;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1}, LHeyzap;->nativeCallback(ILjava/lang/String;)V

    .line 78
    return-void
.end method

.method public onClick(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, LHeyzap$1;->this$0:LHeyzap;

    sget-object v1, LHeyzap$HeyzapCallback;->HZINTERSTITIAL_CLICK:LHeyzap$HeyzapCallback;

    invoke-virtual {v1}, LHeyzap$HeyzapCallback;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1}, LHeyzap;->nativeCallback(ILjava/lang/String;)V

    .line 73
    return-void
.end method

.method public onFailedToFetch(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, LHeyzap$1;->this$0:LHeyzap;

    sget-object v1, LHeyzap$HeyzapCallback;->HZINTERSTITIAL_FAILED_TO_FETCH:LHeyzap$HeyzapCallback;

    invoke-virtual {v1}, LHeyzap$HeyzapCallback;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1}, LHeyzap;->nativeCallback(ILjava/lang/String;)V

    .line 68
    return-void
.end method

.method public onFailedToShow(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, LHeyzap$1;->this$0:LHeyzap;

    sget-object v1, LHeyzap$HeyzapCallback;->HZINTERSTITIAL_FAILED_TO_SHOW:LHeyzap$HeyzapCallback;

    invoke-virtual {v1}, LHeyzap$HeyzapCallback;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1}, LHeyzap;->nativeCallback(ILjava/lang/String;)V

    .line 63
    return-void
.end method

.method public onHide(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, LHeyzap$1;->this$0:LHeyzap;

    sget-object v1, LHeyzap$HeyzapCallback;->HZINTERSTITIAL_HIDE:LHeyzap$HeyzapCallback;

    invoke-virtual {v1}, LHeyzap$HeyzapCallback;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1}, LHeyzap;->nativeCallback(ILjava/lang/String;)V

    .line 58
    return-void
.end method

.method public onShow(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, LHeyzap$1;->this$0:LHeyzap;

    sget-object v1, LHeyzap$HeyzapCallback;->HZINTERSTITIAL_SHOW:LHeyzap$HeyzapCallback;

    invoke-virtual {v1}, LHeyzap$HeyzapCallback;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1}, LHeyzap;->nativeCallback(ILjava/lang/String;)V

    .line 53
    return-void
.end method
