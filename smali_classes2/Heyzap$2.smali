.class LHeyzap$2;
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
    .line 91
    iput-object p1, p0, LHeyzap$2;->this$0:LHeyzap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFinished()V
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, LHeyzap$2;->this$0:LHeyzap;

    sget-object v1, LHeyzap$HeyzapCallback;->HZVIDEO_AUDIO_FINISHED:LHeyzap$HeyzapCallback;

    invoke-virtual {v1}, LHeyzap$HeyzapCallback;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LHeyzap;->nativeCallback(ILjava/lang/String;)V

    .line 131
    return-void
.end method

.method public onAudioStarted()V
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, LHeyzap$2;->this$0:LHeyzap;

    sget-object v1, LHeyzap$HeyzapCallback;->HZVIDEO_AUDIO_STARTED:LHeyzap$HeyzapCallback;

    invoke-virtual {v1}, LHeyzap$HeyzapCallback;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LHeyzap;->nativeCallback(ILjava/lang/String;)V

    .line 126
    return-void
.end method

.method public onAvailable(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, LHeyzap$2;->this$0:LHeyzap;

    sget-object v1, LHeyzap$HeyzapCallback;->HZVIDEO_AVAILABLE:LHeyzap$HeyzapCallback;

    invoke-virtual {v1}, LHeyzap$HeyzapCallback;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1}, LHeyzap;->nativeCallback(ILjava/lang/String;)V

    .line 121
    return-void
.end method

.method public onClick(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, LHeyzap$2;->this$0:LHeyzap;

    sget-object v1, LHeyzap$HeyzapCallback;->HZVIDEO_CLICK:LHeyzap$HeyzapCallback;

    invoke-virtual {v1}, LHeyzap$HeyzapCallback;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1}, LHeyzap;->nativeCallback(ILjava/lang/String;)V

    .line 116
    return-void
.end method

.method public onFailedToFetch(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, LHeyzap$2;->this$0:LHeyzap;

    sget-object v1, LHeyzap$HeyzapCallback;->HZVIDEO_FAILED_TO_FETCH:LHeyzap$HeyzapCallback;

    invoke-virtual {v1}, LHeyzap$HeyzapCallback;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1}, LHeyzap;->nativeCallback(ILjava/lang/String;)V

    .line 111
    return-void
.end method

.method public onFailedToShow(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, LHeyzap$2;->this$0:LHeyzap;

    sget-object v1, LHeyzap$HeyzapCallback;->HZVIDEO_FAILED_TO_SHOW:LHeyzap$HeyzapCallback;

    invoke-virtual {v1}, LHeyzap$HeyzapCallback;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1}, LHeyzap;->nativeCallback(ILjava/lang/String;)V

    .line 106
    return-void
.end method

.method public onHide(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, LHeyzap$2;->this$0:LHeyzap;

    sget-object v1, LHeyzap$HeyzapCallback;->HZVIDEO_HIDE:LHeyzap$HeyzapCallback;

    invoke-virtual {v1}, LHeyzap$HeyzapCallback;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1}, LHeyzap;->nativeCallback(ILjava/lang/String;)V

    .line 101
    return-void
.end method

.method public onShow(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, LHeyzap$2;->this$0:LHeyzap;

    sget-object v1, LHeyzap$HeyzapCallback;->HZVIDEO_SHOW:LHeyzap$HeyzapCallback;

    invoke-virtual {v1}, LHeyzap$HeyzapCallback;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1}, LHeyzap;->nativeCallback(ILjava/lang/String;)V

    .line 96
    return-void
.end method
