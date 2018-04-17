.class LHeyzap$3;
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
    .line 134
    iput-object p1, p0, LHeyzap$3;->this$0:LHeyzap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFinished()V
    .locals 3

    .prologue
    .line 173
    iget-object v0, p0, LHeyzap$3;->this$0:LHeyzap;

    sget-object v1, LHeyzap$HeyzapCallback;->HZINCENTIVIZED_AUDIO_FINISHED:LHeyzap$HeyzapCallback;

    invoke-virtual {v1}, LHeyzap$HeyzapCallback;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LHeyzap;->nativeCallback(ILjava/lang/String;)V

    .line 174
    return-void
.end method

.method public onAudioStarted()V
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, LHeyzap$3;->this$0:LHeyzap;

    sget-object v1, LHeyzap$HeyzapCallback;->HZINCENTIVIZED_AUDIO_STARTED:LHeyzap$HeyzapCallback;

    invoke-virtual {v1}, LHeyzap$HeyzapCallback;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LHeyzap;->nativeCallback(ILjava/lang/String;)V

    .line 169
    return-void
.end method

.method public onAvailable(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, LHeyzap$3;->this$0:LHeyzap;

    sget-object v1, LHeyzap$HeyzapCallback;->HZINCENTIVIZED_AVAILABLE:LHeyzap$HeyzapCallback;

    invoke-virtual {v1}, LHeyzap$HeyzapCallback;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1}, LHeyzap;->nativeCallback(ILjava/lang/String;)V

    .line 164
    return-void
.end method

.method public onClick(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, LHeyzap$3;->this$0:LHeyzap;

    sget-object v1, LHeyzap$HeyzapCallback;->HZINCENTIVIZED_CLICK:LHeyzap$HeyzapCallback;

    invoke-virtual {v1}, LHeyzap$HeyzapCallback;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1}, LHeyzap;->nativeCallback(ILjava/lang/String;)V

    .line 159
    return-void
.end method

.method public onFailedToFetch(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, LHeyzap$3;->this$0:LHeyzap;

    sget-object v1, LHeyzap$HeyzapCallback;->HZINCENTIVIZED_FAILED_TO_FETCH:LHeyzap$HeyzapCallback;

    invoke-virtual {v1}, LHeyzap$HeyzapCallback;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1}, LHeyzap;->nativeCallback(ILjava/lang/String;)V

    .line 154
    return-void
.end method

.method public onFailedToShow(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, LHeyzap$3;->this$0:LHeyzap;

    sget-object v1, LHeyzap$HeyzapCallback;->HZINCENTIVIZED_FAILED_TO_SHOW:LHeyzap$HeyzapCallback;

    invoke-virtual {v1}, LHeyzap$HeyzapCallback;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1}, LHeyzap;->nativeCallback(ILjava/lang/String;)V

    .line 149
    return-void
.end method

.method public onHide(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, LHeyzap$3;->this$0:LHeyzap;

    sget-object v1, LHeyzap$HeyzapCallback;->HZINCENTIVIZED_HIDE:LHeyzap$HeyzapCallback;

    invoke-virtual {v1}, LHeyzap$HeyzapCallback;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1}, LHeyzap;->nativeCallback(ILjava/lang/String;)V

    .line 144
    return-void
.end method

.method public onShow(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, LHeyzap$3;->this$0:LHeyzap;

    sget-object v1, LHeyzap$HeyzapCallback;->HZINCENTIVIZED_SHOW:LHeyzap$HeyzapCallback;

    invoke-virtual {v1}, LHeyzap$HeyzapCallback;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1}, LHeyzap;->nativeCallback(ILjava/lang/String;)V

    .line 139
    return-void
.end method
