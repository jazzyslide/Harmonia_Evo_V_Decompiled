.class public abstract Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;
.super Lcom/htc/protobuf/GeneratedMessageLite$Builder;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ExtendableBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage",
        "<TMessageType;>;BuilderType:",
        "Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder",
        "<TMessageType;TBuilderType;>;>",
        "Lcom/htc/protobuf/GeneratedMessageLite$Builder",
        "<TMessageType;TBuilderType;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final addExtension(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;Ljava/lang/Object;)Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<TMessageType;",
            "Ljava/util/List",
            "<TType;>;>;TType;)TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;->internalGetResult()Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;

    move-result-object v0

    #calls: Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)V
    invoke-static {v0, p1}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->access$400(Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/htc/protobuf/FieldSet;
    invoke-static {v0}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->access$200(Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;)Lcom/htc/protobuf/FieldSet;

    move-result-object v1

    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {p1}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/htc/protobuf/FieldSet;->addRepeatedField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final clearExtension(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<TMessageType;*>;)TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;->internalGetResult()Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;

    move-result-object v0

    #calls: Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)V
    invoke-static {v0, p1}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->access$400(Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/htc/protobuf/FieldSet;
    invoke-static {v0}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->access$200(Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;)Lcom/htc/protobuf/FieldSet;

    move-result-object v1

    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {p1}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/protobuf/FieldSet;->clearField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;->clone()Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;->clone()Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;->clone()Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;->clone()Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final getExtension(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<TMessageType;TType;>;)TType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;->internalGetResult()Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->getExtension(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getExtension(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<TMessageType;",
            "Ljava/util/List",
            "<TType;>;>;I)TType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;->internalGetResult()Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->getExtension(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getExtensionCount(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<TMessageType;",
            "Ljava/util/List",
            "<TType;>;>;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;->internalGetResult()Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->getExtensionCount(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)I

    move-result v0

    return v0
.end method

.method public final hasExtension(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<TMessageType;*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;->internalGetResult()Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->hasExtension(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Z

    move-result v0

    return v0
.end method

.method protected abstract internalGetResult()Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;->internalGetResult()Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;

    move-result-object v0

    return-object v0
.end method

.method protected final mergeExtensionFields(Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;->internalGetResult()Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/htc/protobuf/FieldSet;
    invoke-static {v0}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->access$200(Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;)Lcom/htc/protobuf/FieldSet;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/htc/protobuf/FieldSet;
    invoke-static {p1}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->access$200(Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;)Lcom/htc/protobuf/FieldSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/protobuf/FieldSet;->mergeFrom(Lcom/htc/protobuf/FieldSet;)V

    return-void
.end method

.method protected parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;->internalGetResult()Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;

    move-result-object v10

    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/htc/protobuf/FieldSet;
    invoke-static {v10}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->access$200(Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;)Lcom/htc/protobuf/FieldSet;

    move-result-object v2

    invoke-static {p3}, Lcom/htc/protobuf/WireFormat;->getTagWireType(I)I

    move-result v9

    invoke-static {p3}, Lcom/htc/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;->getDefaultInstanceForType()Lcom/htc/protobuf/GeneratedMessageLite;

    move-result-object v10

    invoke-virtual {p2, v10, v3}, Lcom/htc/protobuf/ExtensionRegistryLite;->findLiteExtensionByNumber(Lcom/htc/protobuf/MessageLite;I)Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v1

    if-eqz v1, :cond_0

    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v1}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/htc/protobuf/WireFormat$FieldType;

    move-result-object v10

    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v1}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v11

    invoke-virtual {v11}, Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v11

    invoke-static {v10, v11}, Lcom/htc/protobuf/FieldSet;->getWireFormatForFieldType(Lcom/htc/protobuf/WireFormat$FieldType;Z)I

    move-result v10

    if-eq v9, v10, :cond_1

    :cond_0
    invoke-virtual {p1, p3}, Lcom/htc/protobuf/CodedInputStream;->skipField(I)Z

    move-result v10

    :goto_0
    return v10

    :cond_1
    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v1}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/htc/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v5

    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v1}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/htc/protobuf/WireFormat$FieldType;

    move-result-object v10

    sget-object v11, Lcom/htc/protobuf/WireFormat$FieldType;->ENUM:Lcom/htc/protobuf/WireFormat$FieldType;

    if-ne v10, v11, :cond_3

    :goto_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v10

    if-lez v10, :cond_4

    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v6

    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v1}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getEnumType()Lcom/htc/protobuf/Internal$EnumLiteMap;

    move-result-object v10

    invoke-interface {v10, v6}, Lcom/htc/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/htc/protobuf/Internal$EnumLite;

    move-result-object v8

    if-nez v8, :cond_2

    const/4 v10, 0x1

    goto :goto_0

    :cond_2
    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v1}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v10

    invoke-virtual {v2, v10, v8}, Lcom/htc/protobuf/FieldSet;->addRepeatedField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v10

    if-lez v10, :cond_4

    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v1}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/htc/protobuf/WireFormat$FieldType;

    move-result-object v10

    invoke-static {p1, v10}, Lcom/htc/protobuf/FieldSet;->readPrimitiveField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/WireFormat$FieldType;)Ljava/lang/Object;

    move-result-object v8

    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v1}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v10

    invoke-virtual {v2, v10, v8}, Lcom/htc/protobuf/FieldSet;->addRepeatedField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v5}, Lcom/htc/protobuf/CodedInputStream;->popLimit(I)V

    :goto_3
    const/4 v10, 0x1

    goto :goto_0

    :cond_5
    sget-object v10, Lcom/htc/protobuf/GeneratedMessageLite$1;->$SwitchMap$com$htc$protobuf$WireFormat$JavaType:[I

    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v1}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v11

    invoke-virtual {v11}, Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteJavaType()Lcom/htc/protobuf/WireFormat$JavaType;

    move-result-object v11

    invoke-virtual {v11}, Lcom/htc/protobuf/WireFormat$JavaType;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v1}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/htc/protobuf/WireFormat$FieldType;

    move-result-object v10

    invoke-static {p1, v10}, Lcom/htc/protobuf/FieldSet;->readPrimitiveField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/WireFormat$FieldType;)Ljava/lang/Object;

    move-result-object v8

    :cond_6
    :goto_4
    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v1}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated()Z

    move-result v10

    if-eqz v10, :cond_a

    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v1}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v10

    invoke-virtual {v2, v10, v8}, Lcom/htc/protobuf/FieldSet;->addRepeatedField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_3

    :pswitch_0
    const/4 v7, 0x0

    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v1}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated()Z

    move-result v10

    if-nez v10, :cond_7

    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v1}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/htc/protobuf/FieldSet;->getField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/MessageLite;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/htc/protobuf/MessageLite;->toBuilder()Lcom/htc/protobuf/MessageLite$Builder;

    move-result-object v7

    :cond_7
    if-nez v7, :cond_8

    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->messageDefaultInstance:Lcom/htc/protobuf/MessageLite;
    invoke-static {v1}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->access$500(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/htc/protobuf/MessageLite;

    move-result-object v10

    invoke-interface {v10}, Lcom/htc/protobuf/MessageLite;->newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;

    move-result-object v7

    :cond_8
    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v1}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/htc/protobuf/WireFormat$FieldType;

    move-result-object v10

    sget-object v11, Lcom/htc/protobuf/WireFormat$FieldType;->GROUP:Lcom/htc/protobuf/WireFormat$FieldType;

    if-ne v10, v11, :cond_9

    invoke-virtual {v1}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->getNumber()I

    move-result v10

    invoke-virtual {p1, v10, v7, p2}, Lcom/htc/protobuf/CodedInputStream;->readGroup(ILcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    :goto_5
    invoke-interface {v7}, Lcom/htc/protobuf/MessageLite$Builder;->build()Lcom/htc/protobuf/MessageLite;

    move-result-object v8

    goto :goto_4

    :cond_9
    invoke-virtual {p1, v7, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    goto :goto_5

    :pswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v6

    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v1}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getEnumType()Lcom/htc/protobuf/Internal$EnumLiteMap;

    move-result-object v10

    invoke-interface {v10, v6}, Lcom/htc/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/htc/protobuf/Internal$EnumLite;

    move-result-object v8

    if-nez v8, :cond_6

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_a
    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v1}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v10

    invoke-virtual {v2, v10, v8}, Lcom/htc/protobuf/FieldSet;->setField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final setExtension(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;ILjava/lang/Object;)Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<TMessageType;",
            "Ljava/util/List",
            "<TType;>;>;ITType;)TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;->internalGetResult()Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;

    move-result-object v0

    #calls: Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)V
    invoke-static {v0, p1}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->access$400(Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/htc/protobuf/FieldSet;
    invoke-static {v0}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->access$200(Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;)Lcom/htc/protobuf/FieldSet;

    move-result-object v1

    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {p1}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3}, Lcom/htc/protobuf/FieldSet;->setRepeatedField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;ILjava/lang/Object;)V

    return-object p0
.end method

.method public final setExtension(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;Ljava/lang/Object;)Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<TMessageType;TType;>;TType;)TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;->internalGetResult()Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;

    move-result-object v0

    #calls: Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)V
    invoke-static {v0, p1}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->access$400(Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/htc/protobuf/FieldSet;
    invoke-static {v0}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->access$200(Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;)Lcom/htc/protobuf/FieldSet;

    move-result-object v1

    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {p1}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/htc/protobuf/FieldSet;->setField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    return-object p0
.end method
