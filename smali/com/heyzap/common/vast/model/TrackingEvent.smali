.class public final enum Lcom/heyzap/common/vast/model/TrackingEvent;
.super Ljava/lang/Enum;
.source "TrackingEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/heyzap/common/vast/model/TrackingEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/heyzap/common/vast/model/TrackingEvent;

.field public static final enum acceptInvitation:Lcom/heyzap/common/vast/model/TrackingEvent;

.field public static final enum close:Lcom/heyzap/common/vast/model/TrackingEvent;

.field public static final enum closeLinear:Lcom/heyzap/common/vast/model/TrackingEvent;

.field public static final enum collapse:Lcom/heyzap/common/vast/model/TrackingEvent;

.field public static final enum complete:Lcom/heyzap/common/vast/model/TrackingEvent;

.field public static final enum creativeView:Lcom/heyzap/common/vast/model/TrackingEvent;

.field public static final enum expand:Lcom/heyzap/common/vast/model/TrackingEvent;

.field public static final enum firstQuartile:Lcom/heyzap/common/vast/model/TrackingEvent;

.field public static final enum fullscreen:Lcom/heyzap/common/vast/model/TrackingEvent;

.field public static final enum midpoint:Lcom/heyzap/common/vast/model/TrackingEvent;

.field public static final enum mute:Lcom/heyzap/common/vast/model/TrackingEvent;

.field public static final enum pause:Lcom/heyzap/common/vast/model/TrackingEvent;

.field public static final enum resume:Lcom/heyzap/common/vast/model/TrackingEvent;

.field public static final enum rewind:Lcom/heyzap/common/vast/model/TrackingEvent;

.field public static final enum skip:Lcom/heyzap/common/vast/model/TrackingEvent;

.field public static final enum start:Lcom/heyzap/common/vast/model/TrackingEvent;

.field public static final enum thirdQuartile:Lcom/heyzap/common/vast/model/TrackingEvent;

.field public static final enum unmute:Lcom/heyzap/common/vast/model/TrackingEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lcom/heyzap/common/vast/model/TrackingEvent;

    const-string v1, "creativeView"

    invoke-direct {v0, v1, v3}, Lcom/heyzap/common/vast/model/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/heyzap/common/vast/model/TrackingEvent;->creativeView:Lcom/heyzap/common/vast/model/TrackingEvent;

    new-instance v0, Lcom/heyzap/common/vast/model/TrackingEvent;

    const-string v1, "start"

    invoke-direct {v0, v1, v4}, Lcom/heyzap/common/vast/model/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/heyzap/common/vast/model/TrackingEvent;->start:Lcom/heyzap/common/vast/model/TrackingEvent;

    new-instance v0, Lcom/heyzap/common/vast/model/TrackingEvent;

    const-string v1, "midpoint"

    invoke-direct {v0, v1, v5}, Lcom/heyzap/common/vast/model/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/heyzap/common/vast/model/TrackingEvent;->midpoint:Lcom/heyzap/common/vast/model/TrackingEvent;

    new-instance v0, Lcom/heyzap/common/vast/model/TrackingEvent;

    const-string v1, "firstQuartile"

    invoke-direct {v0, v1, v6}, Lcom/heyzap/common/vast/model/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/heyzap/common/vast/model/TrackingEvent;->firstQuartile:Lcom/heyzap/common/vast/model/TrackingEvent;

    new-instance v0, Lcom/heyzap/common/vast/model/TrackingEvent;

    const-string v1, "thirdQuartile"

    invoke-direct {v0, v1, v7}, Lcom/heyzap/common/vast/model/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/heyzap/common/vast/model/TrackingEvent;->thirdQuartile:Lcom/heyzap/common/vast/model/TrackingEvent;

    new-instance v0, Lcom/heyzap/common/vast/model/TrackingEvent;

    const-string v1, "complete"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/heyzap/common/vast/model/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/heyzap/common/vast/model/TrackingEvent;->complete:Lcom/heyzap/common/vast/model/TrackingEvent;

    new-instance v0, Lcom/heyzap/common/vast/model/TrackingEvent;

    const-string v1, "mute"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/heyzap/common/vast/model/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/heyzap/common/vast/model/TrackingEvent;->mute:Lcom/heyzap/common/vast/model/TrackingEvent;

    new-instance v0, Lcom/heyzap/common/vast/model/TrackingEvent;

    const-string v1, "unmute"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/heyzap/common/vast/model/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/heyzap/common/vast/model/TrackingEvent;->unmute:Lcom/heyzap/common/vast/model/TrackingEvent;

    new-instance v0, Lcom/heyzap/common/vast/model/TrackingEvent;

    const-string v1, "pause"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/heyzap/common/vast/model/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/heyzap/common/vast/model/TrackingEvent;->pause:Lcom/heyzap/common/vast/model/TrackingEvent;

    new-instance v0, Lcom/heyzap/common/vast/model/TrackingEvent;

    const-string v1, "rewind"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/heyzap/common/vast/model/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/heyzap/common/vast/model/TrackingEvent;->rewind:Lcom/heyzap/common/vast/model/TrackingEvent;

    new-instance v0, Lcom/heyzap/common/vast/model/TrackingEvent;

    const-string v1, "resume"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/heyzap/common/vast/model/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/heyzap/common/vast/model/TrackingEvent;->resume:Lcom/heyzap/common/vast/model/TrackingEvent;

    new-instance v0, Lcom/heyzap/common/vast/model/TrackingEvent;

    const-string v1, "fullscreen"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/heyzap/common/vast/model/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/heyzap/common/vast/model/TrackingEvent;->fullscreen:Lcom/heyzap/common/vast/model/TrackingEvent;

    new-instance v0, Lcom/heyzap/common/vast/model/TrackingEvent;

    const-string v1, "expand"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/heyzap/common/vast/model/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/heyzap/common/vast/model/TrackingEvent;->expand:Lcom/heyzap/common/vast/model/TrackingEvent;

    new-instance v0, Lcom/heyzap/common/vast/model/TrackingEvent;

    const-string v1, "collapse"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/heyzap/common/vast/model/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/heyzap/common/vast/model/TrackingEvent;->collapse:Lcom/heyzap/common/vast/model/TrackingEvent;

    new-instance v0, Lcom/heyzap/common/vast/model/TrackingEvent;

    const-string v1, "acceptInvitation"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/heyzap/common/vast/model/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/heyzap/common/vast/model/TrackingEvent;->acceptInvitation:Lcom/heyzap/common/vast/model/TrackingEvent;

    new-instance v0, Lcom/heyzap/common/vast/model/TrackingEvent;

    const-string v1, "close"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/heyzap/common/vast/model/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/heyzap/common/vast/model/TrackingEvent;->close:Lcom/heyzap/common/vast/model/TrackingEvent;

    new-instance v0, Lcom/heyzap/common/vast/model/TrackingEvent;

    const-string v1, "skip"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/heyzap/common/vast/model/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/heyzap/common/vast/model/TrackingEvent;->skip:Lcom/heyzap/common/vast/model/TrackingEvent;

    new-instance v0, Lcom/heyzap/common/vast/model/TrackingEvent;

    const-string v1, "closeLinear"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/heyzap/common/vast/model/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/heyzap/common/vast/model/TrackingEvent;->closeLinear:Lcom/heyzap/common/vast/model/TrackingEvent;

    .line 9
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/heyzap/common/vast/model/TrackingEvent;

    sget-object v1, Lcom/heyzap/common/vast/model/TrackingEvent;->creativeView:Lcom/heyzap/common/vast/model/TrackingEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/heyzap/common/vast/model/TrackingEvent;->start:Lcom/heyzap/common/vast/model/TrackingEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/heyzap/common/vast/model/TrackingEvent;->midpoint:Lcom/heyzap/common/vast/model/TrackingEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/heyzap/common/vast/model/TrackingEvent;->firstQuartile:Lcom/heyzap/common/vast/model/TrackingEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/heyzap/common/vast/model/TrackingEvent;->thirdQuartile:Lcom/heyzap/common/vast/model/TrackingEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/heyzap/common/vast/model/TrackingEvent;->complete:Lcom/heyzap/common/vast/model/TrackingEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/heyzap/common/vast/model/TrackingEvent;->mute:Lcom/heyzap/common/vast/model/TrackingEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/heyzap/common/vast/model/TrackingEvent;->unmute:Lcom/heyzap/common/vast/model/TrackingEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/heyzap/common/vast/model/TrackingEvent;->pause:Lcom/heyzap/common/vast/model/TrackingEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/heyzap/common/vast/model/TrackingEvent;->rewind:Lcom/heyzap/common/vast/model/TrackingEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/heyzap/common/vast/model/TrackingEvent;->resume:Lcom/heyzap/common/vast/model/TrackingEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/heyzap/common/vast/model/TrackingEvent;->fullscreen:Lcom/heyzap/common/vast/model/TrackingEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/heyzap/common/vast/model/TrackingEvent;->expand:Lcom/heyzap/common/vast/model/TrackingEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/heyzap/common/vast/model/TrackingEvent;->collapse:Lcom/heyzap/common/vast/model/TrackingEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/heyzap/common/vast/model/TrackingEvent;->acceptInvitation:Lcom/heyzap/common/vast/model/TrackingEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/heyzap/common/vast/model/TrackingEvent;->close:Lcom/heyzap/common/vast/model/TrackingEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/heyzap/common/vast/model/TrackingEvent;->skip:Lcom/heyzap/common/vast/model/TrackingEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/heyzap/common/vast/model/TrackingEvent;->closeLinear:Lcom/heyzap/common/vast/model/TrackingEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/heyzap/common/vast/model/TrackingEvent;->$VALUES:[Lcom/heyzap/common/vast/model/TrackingEvent;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/heyzap/common/vast/model/TrackingEvent;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/heyzap/common/vast/model/TrackingEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/vast/model/TrackingEvent;

    return-object v0
.end method

.method public static values()[Lcom/heyzap/common/vast/model/TrackingEvent;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/heyzap/common/vast/model/TrackingEvent;->$VALUES:[Lcom/heyzap/common/vast/model/TrackingEvent;

    invoke-virtual {v0}, [Lcom/heyzap/common/vast/model/TrackingEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/heyzap/common/vast/model/TrackingEvent;

    return-object v0
.end method
