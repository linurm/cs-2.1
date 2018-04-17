.class public Lcom/heyzap/common/vast/model/Tracking;
.super Ljava/lang/Object;
.source "Tracking.java"


# instance fields
.field private event:Lcom/heyzap/common/vast/model/TrackingEvent;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEvent()Lcom/heyzap/common/vast/model/TrackingEvent;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/heyzap/common/vast/model/Tracking;->event:Lcom/heyzap/common/vast/model/TrackingEvent;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/heyzap/common/vast/model/Tracking;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setEvent(Lcom/heyzap/common/vast/model/TrackingEvent;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/heyzap/common/vast/model/Tracking;->event:Lcom/heyzap/common/vast/model/TrackingEvent;

    .line 28
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/heyzap/common/vast/model/Tracking;->value:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tracking [event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/common/vast/model/Tracking;->event:Lcom/heyzap/common/vast/model/TrackingEvent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/common/vast/model/Tracking;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
