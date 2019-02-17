package edu.neu.xswl.csye6225.dao;

import edu.neu.xswl.csye6225.pojo.Attachments;

import java.util.List;

public interface AttachmentDao {

    List<Attachments> selectByNoteId(String noteId);

    void addAttachment(Attachments attachment);

    void updateByAttachmentId(Attachments attachment);

    void deleteByAttachmentId(String attachmentId);
}
