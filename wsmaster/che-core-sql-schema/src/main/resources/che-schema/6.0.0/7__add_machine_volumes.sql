--
-- Copyright (c) 2012-2019 Red Hat, Inc.
-- All rights reserved. This program and the accompanying materials
-- are made available under the terms of the Eclipse Public License v1.0
-- which accompanies this distribution, and is available at
-- http://www.eclipse.org/legal/epl-v10.html
--
-- Contributors:
--   Red Hat, Inc. - initial API and implementation
--

-- Machine volumes configuration -----------------------------------------------
CREATE TABLE machine_volume (
    id              BIGINT          NOT NULL,
    name            VARCHAR(255),
    path            VARCHAR(255)    NOT NULL,
    machine_id      BIGINT,

    PRIMARY KEY (id)
);
--constraints
ALTER TABLE machine_volume ADD CONSTRAINT fk_machine_volume_id FOREIGN KEY (machine_id) REFERENCES externalmachine (id);
--------------------------------------------------------------------------------
--indexes
CREATE INDEX index_machine_volume_machine_id ON machine_volume (machine_id);
