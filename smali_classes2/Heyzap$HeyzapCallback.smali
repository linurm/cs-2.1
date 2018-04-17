.class final enum LHeyzap$HeyzapCallback;
.super Ljava/lang/Enum;
.source "Heyzap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LHeyzap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "HeyzapCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LHeyzap$HeyzapCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LHeyzap$HeyzapCallback;

.field public static final enum HEYZAP_CALLBACK_MAX:LHeyzap$HeyzapCallback;

.field public static final enum HZBANNER_CLICKED:LHeyzap$HeyzapCallback;

.field public static final enum HZBANNER_ERROR:LHeyzap$HeyzapCallback;

.field public static final enum HZBANNER_LOADED:LHeyzap$HeyzapCallback;

.field public static final enum HZINCENTIVIZED_AUDIO_FINISHED:LHeyzap$HeyzapCallback;

.field public static final enum HZINCENTIVIZED_AUDIO_STARTED:LHeyzap$HeyzapCallback;

.field public static final enum HZINCENTIVIZED_AVAILABLE:LHeyzap$HeyzapCallback;

.field public static final enum HZINCENTIVIZED_CLICK:LHeyzap$HeyzapCallback;

.field public static final enum HZINCENTIVIZED_COMPLETE:LHeyzap$HeyzapCallback;

.field public static final enum HZINCENTIVIZED_FAILED_TO_FETCH:LHeyzap$HeyzapCallback;

.field public static final enum HZINCENTIVIZED_FAILED_TO_SHOW:LHeyzap$HeyzapCallback;

.field public static final enum HZINCENTIVIZED_HIDE:LHeyzap$HeyzapCallback;

.field public static final enum HZINCENTIVIZED_INCOMPLETE:LHeyzap$HeyzapCallback;

.field public static final enum HZINCENTIVIZED_SHOW:LHeyzap$HeyzapCallback;

.field public static final enum HZINTERSTITIAL_AUDIO_FINISHED:LHeyzap$HeyzapCallback;

.field public static final enum HZINTERSTITIAL_AUDIO_STARTED:LHeyzap$HeyzapCallback;

.field public static final enum HZINTERSTITIAL_AVAILABLE:LHeyzap$HeyzapCallback;

.field public static final enum HZINTERSTITIAL_CLICK:LHeyzap$HeyzapCallback;

.field public static final enum HZINTERSTITIAL_FAILED_TO_FETCH:LHeyzap$HeyzapCallback;

.field public static final enum HZINTERSTITIAL_FAILED_TO_SHOW:LHeyzap$HeyzapCallback;

.field public static final enum HZINTERSTITIAL_HIDE:LHeyzap$HeyzapCallback;

.field public static final enum HZINTERSTITIAL_SHOW:LHeyzap$HeyzapCallback;

.field public static final enum HZVIDEO_AUDIO_FINISHED:LHeyzap$HeyzapCallback;

.field public static final enum HZVIDEO_AUDIO_STARTED:LHeyzap$HeyzapCallback;

.field public static final enum HZVIDEO_AVAILABLE:LHeyzap$HeyzapCallback;

.field public static final enum HZVIDEO_CLICK:LHeyzap$HeyzapCallback;

.field public static final enum HZVIDEO_FAILED_TO_FETCH:LHeyzap$HeyzapCallback;

.field public static final enum HZVIDEO_FAILED_TO_SHOW:LHeyzap$HeyzapCallback;

.field public static final enum HZVIDEO_HIDE:LHeyzap$HeyzapCallback;

.field public static final enum HZVIDEO_SHOW:LHeyzap$HeyzapCallback;

.field public static final enum HZ_NETWORK_CALLBACK:LHeyzap$HeyzapCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    new-instance v0, LHeyzap$HeyzapCallback;

    const-string v1, "HZINTERSTITIAL_SHOW"

    invoke-direct {v0, v1, v3}, LHeyzap$HeyzapCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHeyzap$HeyzapCallback;->HZINTERSTITIAL_SHOW:LHeyzap$HeyzapCallback;

    new-instance v0, LHeyzap$HeyzapCallback;

    const-string v1, "HZINTERSTITIAL_CLICK"

    invoke-direct {v0, v1, v4}, LHeyzap$HeyzapCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHeyzap$HeyzapCallback;->HZINTERSTITIAL_CLICK:LHeyzap$HeyzapCallback;

    new-instance v0, LHeyzap$HeyzapCallback;

    const-string v1, "HZINTERSTITIAL_HIDE"

    invoke-direct {v0, v1, v5}, LHeyzap$HeyzapCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHeyzap$HeyzapCallback;->HZINTERSTITIAL_HIDE:LHeyzap$HeyzapCallback;

    new-instance v0, LHeyzap$HeyzapCallback;

    const-string v1, "HZINTERSTITIAL_FAILED_TO_SHOW"

    invoke-direct {v0, v1, v6}, LHeyzap$HeyzapCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHeyzap$HeyzapCallback;->HZINTERSTITIAL_FAILED_TO_SHOW:LHeyzap$HeyzapCallback;

    new-instance v0, LHeyzap$HeyzapCallback;

    const-string v1, "HZINTERSTITIAL_AVAILABLE"

    invoke-direct {v0, v1, v7}, LHeyzap$HeyzapCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHeyzap$HeyzapCallback;->HZINTERSTITIAL_AVAILABLE:LHeyzap$HeyzapCallback;

    new-instance v0, LHeyzap$HeyzapCallback;

    const-string v1, "HZINTERSTITIAL_FAILED_TO_FETCH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, LHeyzap$HeyzapCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHeyzap$HeyzapCallback;->HZINTERSTITIAL_FAILED_TO_FETCH:LHeyzap$HeyzapCallback;

    new-instance v0, LHeyzap$HeyzapCallback;

    const-string v1, "HZINTERSTITIAL_AUDIO_STARTED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, LHeyzap$HeyzapCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHeyzap$HeyzapCallback;->HZINTERSTITIAL_AUDIO_STARTED:LHeyzap$HeyzapCallback;

    new-instance v0, LHeyzap$HeyzapCallback;

    const-string v1, "HZINTERSTITIAL_AUDIO_FINISHED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, LHeyzap$HeyzapCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHeyzap$HeyzapCallback;->HZINTERSTITIAL_AUDIO_FINISHED:LHeyzap$HeyzapCallback;

    .line 30
    new-instance v0, LHeyzap$HeyzapCallback;

    const-string v1, "HZVIDEO_SHOW"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, LHeyzap$HeyzapCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHeyzap$HeyzapCallback;->HZVIDEO_SHOW:LHeyzap$HeyzapCallback;

    new-instance v0, LHeyzap$HeyzapCallback;

    const-string v1, "HZVIDEO_CLICK"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, LHeyzap$HeyzapCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHeyzap$HeyzapCallback;->HZVIDEO_CLICK:LHeyzap$HeyzapCallback;

    new-instance v0, LHeyzap$HeyzapCallback;

    const-string v1, "HZVIDEO_HIDE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, LHeyzap$HeyzapCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHeyzap$HeyzapCallback;->HZVIDEO_HIDE:LHeyzap$HeyzapCallback;

    new-instance v0, LHeyzap$HeyzapCallback;

    const-string v1, "HZVIDEO_FAILED_TO_SHOW"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, LHeyzap$HeyzapCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHeyzap$HeyzapCallback;->HZVIDEO_FAILED_TO_SHOW:LHeyzap$HeyzapCallback;

    new-instance v0, LHeyzap$HeyzapCallback;

    const-string v1, "HZVIDEO_AVAILABLE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, LHeyzap$HeyzapCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHeyzap$HeyzapCallback;->HZVIDEO_AVAILABLE:LHeyzap$HeyzapCallback;

    new-instance v0, LHeyzap$HeyzapCallback;

    const-string v1, "HZVIDEO_FAILED_TO_FETCH"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, LHeyzap$HeyzapCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHeyzap$HeyzapCallback;->HZVIDEO_FAILED_TO_FETCH:LHeyzap$HeyzapCallback;

    new-instance v0, LHeyzap$HeyzapCallback;

    const-string v1, "HZVIDEO_AUDIO_STARTED"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, LHeyzap$HeyzapCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHeyzap$HeyzapCallback;->HZVIDEO_AUDIO_STARTED:LHeyzap$HeyzapCallback;

    new-instance v0, LHeyzap$HeyzapCallback;

    const-string v1, "HZVIDEO_AUDIO_FINISHED"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, LHeyzap$HeyzapCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHeyzap$HeyzapCallback;->HZVIDEO_AUDIO_FINISHED:LHeyzap$HeyzapCallback;

    .line 32
    new-instance v0, LHeyzap$HeyzapCallback;

    const-string v1, "HZINCENTIVIZED_SHOW"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, LHeyzap$HeyzapCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHeyzap$HeyzapCallback;->HZINCENTIVIZED_SHOW:LHeyzap$HeyzapCallback;

    new-instance v0, LHeyzap$HeyzapCallback;

    const-string v1, "HZINCENTIVIZED_CLICK"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, LHeyzap$HeyzapCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHeyzap$HeyzapCallback;->HZINCENTIVIZED_CLICK:LHeyzap$HeyzapCallback;

    new-instance v0, LHeyzap$HeyzapCallback;

    const-string v1, "HZINCENTIVIZED_HIDE"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, LHeyzap$HeyzapCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHeyzap$HeyzapCallback;->HZINCENTIVIZED_HIDE:LHeyzap$HeyzapCallback;

    new-instance v0, LHeyzap$HeyzapCallback;

    const-string v1, "HZINCENTIVIZED_FAILED_TO_SHOW"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, LHeyzap$HeyzapCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHeyzap$HeyzapCallback;->HZINCENTIVIZED_FAILED_TO_SHOW:LHeyzap$HeyzapCallback;

    new-instance v0, LHeyzap$HeyzapCallback;

    const-string v1, "HZINCENTIVIZED_AVAILABLE"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, LHeyzap$HeyzapCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHeyzap$HeyzapCallback;->HZINCENTIVIZED_AVAILABLE:LHeyzap$HeyzapCallback;

    new-instance v0, LHeyzap$HeyzapCallback;

    const-string v1, "HZINCENTIVIZED_FAILED_TO_FETCH"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, LHeyzap$HeyzapCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHeyzap$HeyzapCallback;->HZINCENTIVIZED_FAILED_TO_FETCH:LHeyzap$HeyzapCallback;

    new-instance v0, LHeyzap$HeyzapCallback;

    const-string v1, "HZINCENTIVIZED_AUDIO_STARTED"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, LHeyzap$HeyzapCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHeyzap$HeyzapCallback;->HZINCENTIVIZED_AUDIO_STARTED:LHeyzap$HeyzapCallback;

    new-instance v0, LHeyzap$HeyzapCallback;

    const-string v1, "HZINCENTIVIZED_AUDIO_FINISHED"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, LHeyzap$HeyzapCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHeyzap$HeyzapCallback;->HZINCENTIVIZED_AUDIO_FINISHED:LHeyzap$HeyzapCallback;

    new-instance v0, LHeyzap$HeyzapCallback;

    const-string v1, "HZINCENTIVIZED_COMPLETE"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, LHeyzap$HeyzapCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHeyzap$HeyzapCallback;->HZINCENTIVIZED_COMPLETE:LHeyzap$HeyzapCallback;

    new-instance v0, LHeyzap$HeyzapCallback;

    const-string v1, "HZINCENTIVIZED_INCOMPLETE"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, LHeyzap$HeyzapCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHeyzap$HeyzapCallback;->HZINCENTIVIZED_INCOMPLETE:LHeyzap$HeyzapCallback;

    .line 34
    new-instance v0, LHeyzap$HeyzapCallback;

    const-string v1, "HZBANNER_LOADED"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, LHeyzap$HeyzapCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHeyzap$HeyzapCallback;->HZBANNER_LOADED:LHeyzap$HeyzapCallback;

    new-instance v0, LHeyzap$HeyzapCallback;

    const-string v1, "HZBANNER_CLICKED"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, LHeyzap$HeyzapCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHeyzap$HeyzapCallback;->HZBANNER_CLICKED:LHeyzap$HeyzapCallback;

    new-instance v0, LHeyzap$HeyzapCallback;

    const-string v1, "HZBANNER_ERROR"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, LHeyzap$HeyzapCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHeyzap$HeyzapCallback;->HZBANNER_ERROR:LHeyzap$HeyzapCallback;

    .line 36
    new-instance v0, LHeyzap$HeyzapCallback;

    const-string v1, "HZ_NETWORK_CALLBACK"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, LHeyzap$HeyzapCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHeyzap$HeyzapCallback;->HZ_NETWORK_CALLBACK:LHeyzap$HeyzapCallback;

    .line 38
    new-instance v0, LHeyzap$HeyzapCallback;

    const-string v1, "HEYZAP_CALLBACK_MAX"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, LHeyzap$HeyzapCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHeyzap$HeyzapCallback;->HEYZAP_CALLBACK_MAX:LHeyzap$HeyzapCallback;

    .line 27
    const/16 v0, 0x1f

    new-array v0, v0, [LHeyzap$HeyzapCallback;

    sget-object v1, LHeyzap$HeyzapCallback;->HZINTERSTITIAL_SHOW:LHeyzap$HeyzapCallback;

    aput-object v1, v0, v3

    sget-object v1, LHeyzap$HeyzapCallback;->HZINTERSTITIAL_CLICK:LHeyzap$HeyzapCallback;

    aput-object v1, v0, v4

    sget-object v1, LHeyzap$HeyzapCallback;->HZINTERSTITIAL_HIDE:LHeyzap$HeyzapCallback;

    aput-object v1, v0, v5

    sget-object v1, LHeyzap$HeyzapCallback;->HZINTERSTITIAL_FAILED_TO_SHOW:LHeyzap$HeyzapCallback;

    aput-object v1, v0, v6

    sget-object v1, LHeyzap$HeyzapCallback;->HZINTERSTITIAL_AVAILABLE:LHeyzap$HeyzapCallback;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, LHeyzap$HeyzapCallback;->HZINTERSTITIAL_FAILED_TO_FETCH:LHeyzap$HeyzapCallback;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, LHeyzap$HeyzapCallback;->HZINTERSTITIAL_AUDIO_STARTED:LHeyzap$HeyzapCallback;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, LHeyzap$HeyzapCallback;->HZINTERSTITIAL_AUDIO_FINISHED:LHeyzap$HeyzapCallback;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, LHeyzap$HeyzapCallback;->HZVIDEO_SHOW:LHeyzap$HeyzapCallback;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, LHeyzap$HeyzapCallback;->HZVIDEO_CLICK:LHeyzap$HeyzapCallback;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, LHeyzap$HeyzapCallback;->HZVIDEO_HIDE:LHeyzap$HeyzapCallback;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, LHeyzap$HeyzapCallback;->HZVIDEO_FAILED_TO_SHOW:LHeyzap$HeyzapCallback;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, LHeyzap$HeyzapCallback;->HZVIDEO_AVAILABLE:LHeyzap$HeyzapCallback;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, LHeyzap$HeyzapCallback;->HZVIDEO_FAILED_TO_FETCH:LHeyzap$HeyzapCallback;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, LHeyzap$HeyzapCallback;->HZVIDEO_AUDIO_STARTED:LHeyzap$HeyzapCallback;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, LHeyzap$HeyzapCallback;->HZVIDEO_AUDIO_FINISHED:LHeyzap$HeyzapCallback;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, LHeyzap$HeyzapCallback;->HZINCENTIVIZED_SHOW:LHeyzap$HeyzapCallback;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, LHeyzap$HeyzapCallback;->HZINCENTIVIZED_CLICK:LHeyzap$HeyzapCallback;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, LHeyzap$HeyzapCallback;->HZINCENTIVIZED_HIDE:LHeyzap$HeyzapCallback;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, LHeyzap$HeyzapCallback;->HZINCENTIVIZED_FAILED_TO_SHOW:LHeyzap$HeyzapCallback;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, LHeyzap$HeyzapCallback;->HZINCENTIVIZED_AVAILABLE:LHeyzap$HeyzapCallback;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, LHeyzap$HeyzapCallback;->HZINCENTIVIZED_FAILED_TO_FETCH:LHeyzap$HeyzapCallback;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, LHeyzap$HeyzapCallback;->HZINCENTIVIZED_AUDIO_STARTED:LHeyzap$HeyzapCallback;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, LHeyzap$HeyzapCallback;->HZINCENTIVIZED_AUDIO_FINISHED:LHeyzap$HeyzapCallback;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, LHeyzap$HeyzapCallback;->HZINCENTIVIZED_COMPLETE:LHeyzap$HeyzapCallback;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, LHeyzap$HeyzapCallback;->HZINCENTIVIZED_INCOMPLETE:LHeyzap$HeyzapCallback;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, LHeyzap$HeyzapCallback;->HZBANNER_LOADED:LHeyzap$HeyzapCallback;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, LHeyzap$HeyzapCallback;->HZBANNER_CLICKED:LHeyzap$HeyzapCallback;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, LHeyzap$HeyzapCallback;->HZBANNER_ERROR:LHeyzap$HeyzapCallback;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, LHeyzap$HeyzapCallback;->HZ_NETWORK_CALLBACK:LHeyzap$HeyzapCallback;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, LHeyzap$HeyzapCallback;->HEYZAP_CALLBACK_MAX:LHeyzap$HeyzapCallback;

    aput-object v2, v0, v1

    sput-object v0, LHeyzap$HeyzapCallback;->$VALUES:[LHeyzap$HeyzapCallback;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LHeyzap$HeyzapCallback;
    .locals 1

    .prologue
    .line 27
    const-class v0, LHeyzap$HeyzapCallback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LHeyzap$HeyzapCallback;

    return-object v0
.end method

.method public static values()[LHeyzap$HeyzapCallback;
    .locals 1

    .prologue
    .line 27
    sget-object v0, LHeyzap$HeyzapCallback;->$VALUES:[LHeyzap$HeyzapCallback;

    invoke-virtual {v0}, [LHeyzap$HeyzapCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LHeyzap$HeyzapCallback;

    return-object v0
.end method
