.class LHeyzap$4;
.super Ljava/lang/Object;
.source "Heyzap.java"

# interfaces
.implements Lcom/heyzap/sdk/ads/HeyzapAds$OnIncentiveResultListener;


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
    .line 177
    iput-object p1, p0, LHeyzap$4;->this$0:LHeyzap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, LHeyzap$4;->this$0:LHeyzap;

    sget-object v1, LHeyzap$HeyzapCallback;->HZINCENTIVIZED_COMPLETE:LHeyzap$HeyzapCallback;

    invoke-virtual {v1}, LHeyzap$HeyzapCallback;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1}, LHeyzap;->nativeCallback(ILjava/lang/String;)V

    .line 187
    return-void
.end method

.method public onIncomplete(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, LHeyzap$4;->this$0:LHeyzap;

    sget-object v1, LHeyzap$HeyzapCallback;->HZINCENTIVIZED_INCOMPLETE:LHeyzap$HeyzapCallback;

    invoke-virtual {v1}, LHeyzap$HeyzapCallback;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1}, LHeyzap;->nativeCallback(ILjava/lang/String;)V

    .line 182
    return-void
.end method
